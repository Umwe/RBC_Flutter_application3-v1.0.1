import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage4,
          height: 34.v,
          width: 40.h,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 17.v),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Internal medecine dpt",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Text(
                "cases",
                style: theme.textTheme.bodyMedium,
              )
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage6,
          height: 41.v,
          width: 80.h,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 8.v),
        )
      ],
    );
  }
}
