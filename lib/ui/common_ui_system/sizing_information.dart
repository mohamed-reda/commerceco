import 'package:flutter/material.dart';

import '../../Constants/device_screen_type.dart';
import '../common_ui_system/ui_utils.dart';

class SizingInformation {
  Orientation orientation;
  DeviceScreenType deviceScreenType;
  Size screenSize;
  Size localWidgetSize;

  SizingInformation.of(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    orientation = mediaQuery.orientation;
    deviceScreenType = getDeviceType(mediaQuery);
    screenSize = mediaQuery.size;
//    localWidgetSize = Size(boxConstraints.maxWidth, boxConstraints.maxHeight);
  } //  SizingInformation sizingInformation;

//  SizingInformation({
//    this.orientation,
//    this.deviceScreenType,
//    this.screenSize,
//    this.localWidgetSize,
//  });
//
//  setTheSizeInfo(MediaQuery mediaQuery){
//    SizingInformation sizingInformation = SizingInformation(
//      orientation: mediaQuery.orientation,
//      deviceScreenType: getDeviceType(mediaQuery),
//      screenSize: mediaQuery.size,
//      localWidgetSize:
//      Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
//    );
//  }

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}
