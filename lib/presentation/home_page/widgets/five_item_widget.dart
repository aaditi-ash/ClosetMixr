import 'package:flutter/material.dart';
import 'package:closetmixer/core/app_export.dart';

// ignore: must_be_immutable
class FiveItemWidget extends StatelessWidget {
  const FiveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle19,
        height: 200.v,
        radius: BorderRadius.circular(
          25.h,
        ),
        margin: EdgeInsets.only(top: 4.v),
      ),
    );
  }
}
