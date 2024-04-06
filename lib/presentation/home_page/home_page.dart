import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/five_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/ten_item_widget.dart';
import 'widgets/nine_item_widget.dart';
import 'package:closetmixer/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:closetmixer/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SLIDER
      
                _buildTwenty(context),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 34.h,
                  ),
                  child: _buildTwentyEight(
                    context,
                    shoes: "Shirts",
                    seeAll: "See All >> ",
                  ),
                ),
                SizedBox(height: 22.v),
                _buildTen(context),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 34.h,
                  ),
                  child: _buildTwentyEight(
                    context,
                    shoes: "Shoes",
                    seeAll: "See All >> ",
                  ),
                ),
                SizedBox(height: 23.v),
                _buildNine(context),
                SizedBox(height: 26.v),
                _buildTwentySix(context),
                SizedBox(height: 19.v),
                _buildTwentyNine(context),
              ],
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Container(
      height: 204.v,
      width: 348.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 204.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 5,
            itemBuilder: (context, index, realIndex) {
              return FiveItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 24.v,
              margin: EdgeInsets.only(
                left: 128.h,
                bottom: 11.v,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 5,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 8,
                  activeDotColor: appTheme.black900,
                  dotColor: appTheme.black900.withOpacity(0.46),
                  dotHeight: 8.v,
                  dotWidth: 8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return SizedBox(
      height: 111.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 2.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 26.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return TenItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return SizedBox(
      height: 111.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 2.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 26.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return NineItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 34.h),
      child: Row(
        children: [
          Text(
            "Accessories",
            style: theme.textTheme.headlineSmall,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 113.h,
              bottom: 4.v,
            ),
            child: Text(
              "See All >> ",
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 2.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle31,
              height: 111.v,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
            Container(
              height: 111.v,
              width: 137.h,
              margin: EdgeInsets.only(left: 26.h),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle32,
                    height: 111.v,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 21.v,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 25.h),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle33,
              height: 111.v,
              radius: BorderRadius.circular(
                15.h,
              ),
              margin: EdgeInsets.only(left: 26.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 64,
      width: 66,
      backgroundColor: theme.colorScheme.secondaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgCameraUndefined,
        height: 32.0.v,
        width: 33.0.h,
      ),
    );
  }

  /// Common widget
  Widget _buildTwentyEight(
    BuildContext context, {
    required String shoes,
    required String seeAll,
  }) {
    return Row(
      children: [
        Text(
          shoes,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 180.h,
            top: 3.v,
          ),
          child: Text(
            seeAll,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
