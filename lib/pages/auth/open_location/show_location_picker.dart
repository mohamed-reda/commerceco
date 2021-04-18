//import 'package:elgelany/pages/auth/register/register_provider.dart';
//import 'package:elgelany/utils/location/uuid.dart';
//import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:provider/provider.dart';
//
//import 'location_provider.dart';
//import 'map.dart';
//
//// ignore: must_be_immutable
//class LocationPicker extends StatefulWidget {
//  LocationPicker(
//    this.apiKey, {
//    Key key,
//    this.initialCenter,
//    this.requiredGPS,
//    this.myLocationButtonEnabled,
//    this.layersButtonEnabled,
//    this.automaticallyAnimateToCurrentLocation,
//    this.mapStylePath,
//    this.appBarColor,
//    this.hintText,
//    this.resultCardConfirmWidget,
//    this.resultCardAlignment,
//    this.resultCardDecoration,
//    this.resultCardPadding,
//    this.providerOfRegister,
//  });
//
//  final String apiKey;
//  ProviderOfRegister providerOfRegister;
//  final LatLng initialCenter;
//  final bool requiredGPS;
//  final bool myLocationButtonEnabled;
//  final bool layersButtonEnabled;
//  final bool automaticallyAnimateToCurrentLocation;
//  final String mapStylePath;
//  final Color appBarColor;
//  final String hintText;
//  final Widget resultCardConfirmWidget;
//  final Alignment resultCardAlignment;
//  final Decoration resultCardDecoration;
//  final EdgeInsets resultCardPadding;
//
//  @override
//  LocationPickerState createState() => LocationPickerState();
//}
//
//class LocationPickerState extends State<LocationPicker> {
//  OverlayEntry overlayEntry;
//  String sessionToken = Uuid().generateV4();
//  var mapKey = GlobalKey<MapPickerState>();
//  var appBarKey = GlobalKey();
//  bool hasSearchTerm = false;
//
//  /// Hides the autocomplete overlay
//  void clearOverlay() {
//    if (overlayEntry != null) {
//      overlayEntry.remove();
//      overlayEntry = null;
//    }
//  }
//
//  /// To navigate to the selected place from the autocomplete list to the map,
//  /// the lat,lng is required. This method fetches the lat,lng of the place and
//  /// proceeds to moving the map to that location.
////  void decodeAndSelectPlace(String placeId) {
////    clearOverlay();
////
////    String endpoint =
////        "https://maps.googleapis.com/maps/api/place/details/json?key=${widget.apiKey}" +
////            "&placeid=$placeId";
////
////    LocationUtils.getAppHeaders()
////        .then((headers) => http.get(endpoint, headers: headers))
////        .then((response) {
////      if (response.statusCode == 200) {
////        Map<String, dynamic> location =
////            jsonDecode(response.body)['result']['geometry']['location'];
////
////        LatLng latLng = LatLng(location['lat'], location['lng']);
////
////        moveToLocation(latLng);
////      }
////    }).catchError((error) {
////      print(error);
////    });
////  }
//
//  /// Moves the camera to the provided location and updates other UI features to
//  /// match the location.
//  void moveToLocation(LatLng latLng) {
//    mapKey.currentState.mapController.future.then((controller) {
//      controller.animateCamera(
//        CameraUpdate.newCameraPosition(
//          CameraPosition(
//            target: latLng,
//            zoom: 16,
//          ),
//        ),
//      );
//    });
//
////    reverseGeocodeLatLng(latLng);
////
////    getNearbyPlaces(latLng);
//  }
//
//  @override
//  void dispose() {
//    clearOverlay();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MultiProvider(
//      providers: [
//        ChangeNotifierProvider(builder: (context) => LocationProvider()),
//      ],
//      child: Builder(builder: (context) {
//        return Scaffold(
//          body: MapPicker(
//            initialCenter: widget.initialCenter,
//            requiredGPS: widget.requiredGPS,
//            myLocationButtonEnabled: widget.myLocationButtonEnabled,
//            layersButtonEnabled: widget.layersButtonEnabled,
//            automaticallyAnimateToCurrentLocation:
//                widget.automaticallyAnimateToCurrentLocation,
//            mapStylePath: widget.mapStylePath,
//            appBarColor: widget.appBarColor,
//            resultCardConfirmWidget: widget.resultCardConfirmWidget,
//            resultCardAlignment: widget.resultCardAlignment,
//            resultCardDecoration: widget.resultCardDecoration,
//            resultCardPadding: widget.resultCardPadding,
//            key: mapKey,
//            providerOfRegister: widget.providerOfRegister,
//          ),
//        );
//      }),
//    );
//  }
//}
