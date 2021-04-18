//import 'package:flutter/material.dart';
//
//class MapFabs extends StatelessWidget {
//  const MapFabs({
//    Key key,
//    @required this.myLocationButtonEnabled,
//    @required this.layersButtonEnabled,
//    @required this.onToggleMapTypePressed,
//    @required this.onMyLocationPressed,
//  })  : assert(onToggleMapTypePressed != null),
//        super(key: key);
//
//  final bool myLocationButtonEnabled;
//  final bool layersButtonEnabled;
//
//  final VoidCallback onToggleMapTypePressed;
//  final VoidCallback onMyLocationPressed;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      alignment: Alignment.topRight,
//      margin: const EdgeInsets.only(top: kToolbarHeight + 24, right: 8),
//      child: Column(
//        children: <Widget>[
//          layersButtonEnabled == true
//              ? FloatingActionButton(
//                  onPressed: onToggleMapTypePressed,
//                  materialTapTargetSize: MaterialTapTargetSize.padded,
//                  mini: true,
//                  child: const Icon(Icons.layers),
//                  heroTag: "layers",
//                )
//              : SizedBox(),
//          myLocationButtonEnabled == true
//              ? FloatingActionButton(
//                  onPressed: onMyLocationPressed,
//                  materialTapTargetSize: MaterialTapTargetSize.padded,
//                  mini: true,
//                  child: const Icon(Icons.my_location),
//                  heroTag: "myLocation",
//                )
//              : SizedBox(),
//        ],
//      ),
//    );
//  }
//}
