import 'dart:async';

import '../Constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

Widget likeButton(IconData icon, {Function fun}) {
  LikeButton likeButton = LikeButton(
    onTap: (bool isLiked) {
//        print('tabed');
      fun();
      return onLikeButtonTap(isLiked);
    },
    circleColor:
        CircleColor(start: AppColors.DarkYellow, end: AppColors.LightYellow),
    bubblesColor: BubblesColor(
      dotPrimaryColor: AppColors.LightYellow,
      dotSecondaryColor: AppColors.DarkYellow,
    ),
    likeBuilder: (bool isLiked) {
      return Icon(
        icon,
        color: isLiked ? Colors.grey : AppColors.DarkYellow,
      );
    },
  );

  return likeButton;
}

Future<bool> onLikeButtonTap(bool isLiked) {
  final Completer<bool> completer = new Completer<bool>();
  Timer(const Duration(milliseconds: 200), () {
    // if your request is failed,return null,
//      if (!isLiked) {
//        completer.complete(true);
//      } else {
    completer.complete(!isLiked);
//      }
  });
  return completer.future;
}
