import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';

// ignore: must_be_immutable
class GridframethreeItemWidget extends StatelessWidget {
  const GridframethreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          SizedBox(
            width: 90.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "ALUVA:\n\n".toUpperCase(),
                    style: CustomTextStyles.titleLargeRobotoBlack900Medium,
                  ),
                  TextSpan(
                    text: "12 possible donors\n".toUpperCase(),
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
