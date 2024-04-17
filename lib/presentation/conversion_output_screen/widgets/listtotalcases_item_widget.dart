import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListtotalcasesItemWidget extends StatelessWidget {
  const ListtotalcasesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 151.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage8,
        height: 136.v,
        width: 151.h,
        radius: BorderRadius.circular(
          4.h,
        ),
        margin: EdgeInsets.only(bottom: 36.v),
      ),
    );
  }
}
