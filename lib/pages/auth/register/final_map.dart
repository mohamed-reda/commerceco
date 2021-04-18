// ignore: must_be_immutable
import '../../../pages/auth/register/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class OpenFinalMap extends StatelessWidget {
//  Position position;
  ProviderOfRegister providerOfRegister;

  OpenFinalMap({this.providerOfRegister}) {
//    rootBundle.loadString(_currentMapType).then((string) {
//      _mapStyle = string;
//    });
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((v) {
      providerOfRegister.current = v;

      moveToCurrentLocation(LatLng(providerOfRegister.current.latitude,
          providerOfRegister.current.longitude));
    });
  }

//  Completer<GoogleMapController> mapController = Completer();

  MapType _currentMapType = MapType.normal;

  String _mapStyle;

//  LatLng _lastMapPosition;

  Position _currentPosition;

//  String _address;
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            myLocationButtonEnabled: false,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(providerOfRegister.current.latitude,
                  providerOfRegister.current.longitude),
              zoom: 16,
            ),
            onCameraMove: (CameraPosition position) {
//              _lastMapPosition = position.target;
              providerOfRegister.lastPosition = position.target;
            },
            onCameraIdle: () async {
//              print( "onCameraIdle#_lastMapPosition = ${providerOfRegister.lastPosition}");
//              providerOfRegister.lastPosition=_lastMapPosition;
//              LocationProvider.of(context, listen: false)
//                  .setLastIdleLocation(_lastMapPosition);
            },
            onCameraMoveStarted: () {
//              print("onCameraMoveStarted#_lastMapPosition = $_lastMapPosition");
            },
//            onTap: (latLng) {
//              clearOverlay();
//            },
            mapType: _currentMapType,
            myLocationEnabled: true,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      //todo notify
                      _currentMapType = MapType.hybrid;
                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    mini: true,
                    child: const Icon(Icons.layers),
                    heroTag: "layers",
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      moveToCurrentLocation(LatLng(
                          providerOfRegister.current.latitude,
                          providerOfRegister.current.longitude));
                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    mini: true,
                    child: const Icon(Icons.my_location),
                    heroTag: "myLocation",
                  )
                ],
              ),
            ),
          ),
          IgnorePointer(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.place, size: 56),
                  Container(
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.yellow,
                        ),
                      ],
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 4,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 56),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
        ],
      ),
    );
  }

  Future moveToCurrentLocation(LatLng currentLocation) async {
//    var controller = await mapController.future;
    providerOfRegister.lastPosition = currentLocation;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: providerOfRegister.lastPosition, zoom: 16),
    ));
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}

//// ignore: must_be_immutable
//import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//import 'register_provider.dart';
//
//// ignore: must_be_immutable
//class OpenFinalMap extends StatefulWidget {
////  Position position;
//  ProviderOfRegister providerOfRegister;
//
//  OpenFinalMap({this.providerOfRegister}) {
////    rootBundle.loadString(_currentMapType).then((string) {
////      _mapStyle = string;
////    });
//  }
//
//  @override
//  _OpenFinalMapState createState() => _OpenFinalMapState();
//}
//
//class _OpenFinalMapState extends State<OpenFinalMap> {
//  MapType _currentMapType = MapType.normal;
//
//  LatLng _lastMapPosition;
//
//  GoogleMapController mapController;
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: <Widget>[
//        GoogleMap(
//          myLocationButtonEnabled: false,
//          onMapCreated: _onMapCreated,
//          initialCameraPosition: CameraPosition(
//            target: LatLng(widget.providerOfRegister.current.latitude,
//                widget.providerOfRegister.current.longitude),
//            zoom: 16,
//          ),
//          onCameraMove: (CameraPosition position) {
//            _lastMapPosition = position.target;
//          },
//          onCameraIdle: () async {
//            print("onCameraIdle#_lastMapPosition = $_lastMapPosition");
////              LocationProvider.of(context, listen: false)
////                  .setLastIdleLocation(_lastMapPosition);
//          },
//          onCameraMoveStarted: () {
//            print("onCameraMoveStarted#_lastMapPosition = $_lastMapPosition");
//          },
////            onTap: (latLng) {
////              clearOverlay();
////            },
//          mapType: _currentMapType,
//          myLocationEnabled: true,
//        ),
//        SafeArea(
//          child: Padding(
//            padding: const EdgeInsets.all(12.0),
//            child: Column(
//              children: <Widget>[
//                FloatingActionButton(
//                  onPressed: () {
//                    //todo notify
//                    _currentMapType = MapType.hybrid;
//                  },
//                  materialTapTargetSize: MaterialTapTargetSize.padded,
//                  mini: true,
//                  child: const Icon(Icons.layers),
//                  heroTag: "layers",
//                ),
//                FloatingActionButton(
//                  onPressed: () {
//                    moveToCurrentLocation(LatLng(
//                        widget.providerOfRegister.current.latitude,
//                        widget.providerOfRegister.current.longitude));
//                  },
//                  materialTapTargetSize: MaterialTapTargetSize.padded,
//                  mini: true,
//                  child: const Icon(Icons.my_location),
//                  heroTag: "myLocation",
//                )
//              ],
//            ),
//          ),
//        ),
//        IgnorePointer(
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Icon(Icons.place, size: 56),
//                Container(
//                  decoration: ShapeDecoration(
//                    shadows: [
//                      BoxShadow(
//                        blurRadius: 4,
//                        color: Colors.yellow,
//                      ),
//                    ],
//                    shape: CircleBorder(
//                      side: BorderSide(
//                        width: 4,
//                        color: Colors.transparent,
//                      ),
//                    ),
//                  ),
//                ),
//                SizedBox(height: 56),
//              ],
//            ),
//          ),
//        ),
//        Positioned(
//          bottom: 20,
//          right: 20,
//          child: FloatingActionButton(
//              child: Icon(Icons.arrow_back),
//              onPressed: () {
//                ProviderOfRegister.indexedTab = 0;
//                widget.providerOfRegister.notify();
//              }),
//        ),
//      ],
//    );
//  }
//
//  Future moveToCurrentLocation(LatLng currentLocation) async {
////    var controller = await mapController.future;
//    mapController.animateCamera(CameraUpdate.newCameraPosition(
//      CameraPosition(target: currentLocation, zoom: 16),
//    ));
//  }
//
//  void _onMapCreated(GoogleMapController controller) {
//    mapController = controller;
//  }
//}
