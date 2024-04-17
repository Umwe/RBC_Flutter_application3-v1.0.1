import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/listtotalcases_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class ConversionOutputScreen extends StatelessWidget {
  const ConversionOutputScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildContainer5(context),
                  SizedBox(height: 41.v),
                  _buildColumnsummary(context),
                  SizedBox(height: 38.v),
                  _buildColumnweekly(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "Welcome, Africa",
              margin: EdgeInsets.only(right: 95.h),
            ),
            SizedBox(height: 4.v),
            AppbarTitle(
              text: "Admin Dashboard",
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage2,
          margin: EdgeInsets.only(
            left: 46.h,
            top: 2.v,
            right: 46.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildContainer5(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapContainer5(context);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 12.h,
          right: 46.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 26.v,
        ),
        decoration: AppDecoration.outlinePrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                40.h,
              ),
              margin: EdgeInsets.only(
                left: 13.h,
                top: 1.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 18.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Weekly report",
                    style: CustomTextStyles.titleMediumBlue100,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Last updated - Apr. 20. 2024",
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnsummary(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Summary",
                  style: theme.textTheme.titleMedium,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 10.v,
                  width: 31.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 11.v,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            height: 172.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 1.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListtotalcasesItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnweekly(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Weekly",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.only(right: 51.h),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20.v,
                );
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return ViewhierarchyItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapContainer5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
