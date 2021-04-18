//import 'dart:async';
//
//import 'package:elgelany/pages/auth/register/register_provider.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter/services.dart' show rootBundle;
//import 'package:geolocator/geolocator.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//import 'map_fabs.dart';
//
//// ignore: must_be_immutable
//class MapPicker extends StatefulWidget {
//  MapPicker({
//    this.initialCenter,
//    this.requiredGPS,
//    this.myLocationButtonEnabled,
//    this.layersButtonEnabled,
//    this.automaticallyAnimateToCurrentLocation,
//    this.mapStylePath,
//    this.appBarColor,
////    this.resultCardConfirmWidget,
////    this.resultCardAlignment,
////    this.resultCardDecoration,
////    this.resultCardPadding,
//    this.providerOfRegister,
//  });
////  final String apiKey;
//
//  final LatLng initialCenter;
//  ProviderOfRegister providerOfRegister;
//  final bool requiredGPS;
//  final bool myLocationButtonEnabled;
//  final bool layersButtonEnabled;
//  final bool automaticallyAnimateToCurrentLocation;
//  final String mapStylePath;
//  final Color appBarColor;
////  final Widget resultCardConfirmWidget;
////  final Alignment resultCardAlignment;
////  final Decoration resultCardDecoration;
////  final EdgeInsets resultCardPadding;
//  @override
//  MapPickerState createState() => MapPickerState();
//}
//
//class MapPickerState extends State<MapPicker> {
//  Completer<GoogleMapController> mapController = Completer();
//  MapType _currentMapType = MapType.normal;
//  String _mapStyle;
//  LatLng _lastMapPosition;
////  Position _currentPosition;
//
//  void _onToggleMapTypePressed() {
//    final MapType nextType =
//        MapType.values[(_currentMapType.index + 1) % MapType.values.length];
//
//    setState(() => _currentMapType = nextType);
//  }
//
//  // this also checks for location permission.
//  Future<void> _initCurrentLocation() async {
//    Position currentPosition;
//    try {
//      currentPosition = await Geolocator()
//          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
////      print("position = $currentPosition");
//      widget.providerOfRegister.current = currentPosition;
////      setState(() => _currentPosition = currentPosition);
//    } on PlatformException catch (e) {
//      currentPosition = null;
//      print("_initCurrentLocation#e = $e");
//    }
//    if (!mounted) return;
//    widget.providerOfRegister.current = currentPosition;
//    if (currentPosition != null)
//      moveToCurrentLocation(
//          LatLng(currentPosition.latitude, currentPosition.longitude));
//  }
//
//  Future moveToCurrentLocation(LatLng currentLocation) async {
//    var controller = await mapController.future;
//    controller.animateCamera(CameraUpdate.newCameraPosition(
//      CameraPosition(target: currentLocation, zoom: 16),
//    ));
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    if (widget.automaticallyAnimateToCurrentLocation) _initCurrentLocation();
//
//    if (widget.mapStylePath != null) {
//      rootBundle.loadString(widget.mapStylePath).then((string) {
//        _mapStyle = string;
//      });
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if (widget.requiredGPS) {
//      _checkGps();
//      _checkGeolocationPermission();
//    }
//    return Scaffold(
//        body:
////      Builder(builder: (context) {
////        if (_currentPosition == null &&
////            widget.automaticallyAnimateToCurrentLocation &&
////            widget.requiredGPS) {
////          return const Center(child: CircularProgressIndicator());
////        }
//            buildMap()
////      }),
//        );
//  }
//
//  Widget buildMap() {
//    return Center(
//      child: Stack(
//        children: <Widget>[
//          GoogleMap(
//            myLocationButtonEnabled: false,
//            initialCameraPosition: CameraPosition(
//              target: widget.initialCenter,
//              zoom: 16,
//            ),
//            onMapCreated: (GoogleMapController controller) {
//              mapController.complete(controller);
//              //Implementation of mapStyle
//              if (widget.mapStylePath != null) {
//                controller.setMapStyle(_mapStyle);
//              }
//
//              _lastMapPosition = widget.initialCenter;
//              widget.providerOfRegister.latLng = _lastMapPosition;
////              LocationProvider.of(context, listen: false)
////                  .setLastIdleLocation(_lastMapPosition);
//            },
//            onCameraMove: (CameraPosition position) {
//              _lastMapPosition = position.target;
//            },
//            onCameraIdle: () async {
//              print("onCameraIdle#_lastMapPosition = $_lastMapPosition");
//
//              widget.providerOfRegister.latLng = _lastMapPosition;
////              LocationProvider.of(context, listen: false)
////                  .setLastIdleLocation(_lastMapPosition);
//            },
//            onCameraMoveStarted: () {
//              print("onCameraMoveStarted#_lastMapPosition = $_lastMapPosition");
//            },
////            onTap: (latLng) {
////              clearOverlay();
////            },
//            mapType: _currentMapType,
//            myLocationEnabled: true,
//          ),
//          MapFabs(
//            myLocationButtonEnabled: widget.myLocationButtonEnabled,
//            layersButtonEnabled: widget.layersButtonEnabled,
//            onToggleMapTypePressed: _onToggleMapTypePressed,
//            onMyLocationPressed: _initCurrentLocation,
//          ),
//          pin(),
////          locationCard(),
//        ],
//      ),
//    );
//  }
//
////  Widget locationCard() {
////    return Align(
////      alignment: widget.resultCardAlignment ?? Alignment.bottomRight,
////      child: Padding(
////        padding: const EdgeInsets.all(16.0),
////        child: Row(
////          mainAxisAlignment: MainAxisAlignment.spaceBetween,
////          children: <Widget>[
////            Spacer(),
////            FloatingActionButton(
////              onPressed: () {
////                widget.providerOfRegister.showMap = false;
//////
//////                  widget.providerOfRegister.latLng =
//////                      locationProvider.lastIdleLocation;
////                widget.providerOfRegister.latLng = _lastMapPosition;
////                widget.providerOfRegister.notify();
////              },
////              child: Text('OK'),
////            ),
////          ],
////        ),
////      ),
////    );
////  }
//
//  Widget pin() {
//    return IgnorePointer(
//      child: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Icon(
//              Icons.place,
//              size: 56,
//              color: Colors.yellow,
//            ),
//            Container(
//              decoration: ShapeDecoration(
//                shadows: [
//                  BoxShadow(
//                    blurRadius: 4,
//                    color: Colors.black38,
//                  ),
//                ],
//                shape: CircleBorder(
//                  side: BorderSide(
//                    width: 4,
//                    color: Colors.transparent,
//                  ),
//                ),
//              ),
//            ),
//            SizedBox(height: 56),
//          ],
//        ),
//      ),
//    );
//  }
//
//  var dialogOpen;
//  Future _checkGeolocationPermission() async {
//    var geolocationStatus =
//        await Geolocator().checkGeolocationPermissionStatus();
//
//    if (geolocationStatus == GeolocationStatus.denied && dialogOpen == null) {
//      print('showDialog');
////      dialogOpen = showDialog(
////        context: context,
////        barrierDismissible: false,
////        builder: (context) {
////          return AlertDialog(
////            title: Text('Access to location denied'),
////            content: Text('Allow access to the location services.'),
////            actions: <Widget>[
////              FlatButton(
////                child: Text('Ok'),
////                onPressed: () {
////                  Navigator.of(context, rootNavigator: true).pop();
////                  _initCurrentLocation();
////                  dialogOpen = null;
////                },
////              ),
////            ],
////          );
////        },
////      );
//    } else if (geolocationStatus == GeolocationStatus.disabled) {
//      // FIXME: handle this case
//    } else if (geolocationStatus == GeolocationStatus.granted) {
//      print('GeolocationStatus.granted');
//      if (dialogOpen != null) {
//        Navigator.of(context, rootNavigator: true).pop();
//        dialogOpen = null;
//      }
//    }
//  }
//
//  Future _checkGps() async {
//    if (!(await Geolocator().isLocationServiceEnabled())) {
//      if (Theme.of(context).platform == TargetPlatform.android) {
//        showDialog(
//          context: context,
//          barrierDismissible: false,
//        );
//      }
//    }
//  }
//}
