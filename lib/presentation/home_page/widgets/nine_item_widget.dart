import 'package:flutter/material.dart';
import 'package:closetmixer/core/app_export.dart';

// ignore: must_be_immutable
class NineItemWidget extends StatelessWidget {
  const NineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 137.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle27,
        height: 111.v,
        radius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}
