import 'package:closetmixer/widgets/custom_icon_button.dart';
import 'package:closetmixer/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:closetmixer/core/app_export.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: must_be_immutable
class OutfitCardDialog extends StatelessWidget {
  const OutfitCardDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 58.v,
          ),
          child: Material(
            child: Column(
              children: [
                Spacer(),
                _buildThree(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "CATS GRAPHIC TEE",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "blue, oversized, tee, graphic",
                    style: CustomTextStyles.labelLargeBlack900Medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: CustomIconButton(
                    height: 64.v,
                    width: 66.h,
                    padding: EdgeInsets.all(19.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRecycleUndefined,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  width: 184.h,
                  text: "Add to outfit",
                  margin: EdgeInsets.only(top: 6.v),
                  buttonTextStyle: theme.textTheme.labelLarge!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
