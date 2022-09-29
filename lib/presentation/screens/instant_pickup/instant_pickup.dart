import 'dart:async';

import 'package:dotidoti_app/presentation/screens/waste_capture/waste_capture.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class InstantPickup extends StatefulWidget {
  @override
  State<InstantPickup> createState() => InstantPickupState();
}

class InstantPickupState extends State<InstantPickup> {
  final Completer<GoogleMapController> _controller = Completer();
  LocationData? currentLocation;
  double minHeight = 0.3;

  Future getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    location.getLocation().then((location) {
      currentLocation = location;
      setState(() {});
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentLocation == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Stack(
                children: [
                  GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      // bearing: 192.8334901395799,
                      target: LatLng(currentLocation!.latitude!,
                          currentLocation!.longitude!),
                      zoom: 18.5,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                    markers: {
                      Marker(
                        markerId: const MarkerId("currentLocation"),
                        position: LatLng(currentLocation!.latitude!,
                            currentLocation!.longitude!),
                      ),
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Pick a Location or closest Landmark'),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: Get.width * 0.8,
                        child: DefaultBtn(
                          text: 'Select Location',
                          press: () => Get.to(
                            const WasteCapture(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

      // DraggableScrollableSheet(
      //   initialChildSize: minHeight,
      //   minChildSize: minHeight,
      //   builder: (BuildContext context, scrollController) => Container(
      //       color: Colors.white,
      //       child: ListView(
      //         padding: EdgeInsets.symmetric(horizontal: 20.w),
      //         physics: const ClampingScrollPhysics(),
      //         children: [
      //           Visibility(
      //             visible: minHeight < 0.5,
      //             child: DefaultBtn(
      //               press: () {
      //                 setState(() {
      //                   minHeight = 0.8;
      //                 });
      //               },
      //               text: 'Select Pickup Location',
      //             ),
      //           ),
      //           const TextField(
      //             decoration:
      //                 InputDecoration(hintText: 'Enter Pickup Location'),
      //           )
      //         ],
      //       )),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
