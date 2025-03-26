import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/strings.dart';
import 'dart:math' as math;

import 'package:radhe_gaushala/utility/utils.dart';

class ProductCategories extends StatefulWidget {
  const ProductCategories({super.key});

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: customAppBar(kProductCategories,
          isBack: true, showActions: true, showNotification: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: screenHeight! / 7,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppTheme.grey3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Assets.images.fakeButtermilk
                                      .image(height: 70, width: 70),
                                ),
                              ),
                              Utils.customHeight(7),
                              CustomText(
                                "Milk",
                                fontSize: AppTheme.size14,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10)
                      ],
                    );
                  }),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  "Milk Product",
                  fontSize: AppTheme.size16,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: screenWidth,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppTheme.grey3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppTheme.grey3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Assets.images.fakeButtermilk
                                      .image(height: 90, width: 90),
                                ),
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      "Organic Farm Fresh Buffalo Milk with Protein",
                                      fontSize: AppTheme.size14,
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.black1,
                                    ),
                                    CustomText(
                                      "500 ml",
                                      fontSize: AppTheme.size12,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.black1.withOpacity(0.4),
                                    ),
                                    Row(
                                      children: [
                                        CustomText(
                                          "₹85",
                                          fontSize: AppTheme.size14,
                                          fontWeight: FontWeight.w400,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color:
                                              AppTheme.black1.withOpacity(0.4),
                                        ),
                                        SizedBox(width: 10),
                                        CustomText(
                                          "₹85",
                                          fontSize: AppTheme.size14,
                                          fontWeight: FontWeight.w500,
                                          color: AppTheme.black1,
                                        ),
                                        SizedBox(width: 10),
                                        Assets.icon.star
                                            .svg(height: 10, width: 10),
                                        SizedBox(width: 3),
                                        CustomText(
                                          "3.5",
                                          fontSize: AppTheme.size14,
                                          fontWeight: FontWeight.w400,
                                          color: AppTheme.black1,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                AppTheme.buttomBackColorLight,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: AppTheme.violentLight),
                                          ),
                                          child: Assets.icon.blueHeart.svg(),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 30,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color:
                                                  AppTheme.buttomBackColorLight,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  color: AppTheme.violentLight),
                                            ),
                                            alignment: Alignment.center,
                                            child: CustomText("Add",
                                                fontSize: AppTheme.size12,
                                                fontWeight: FontWeight.w600,
                                                color: AppTheme.violent),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10)
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
