import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/utils.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _selectedBannerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.screenBackground,
      appBar: customAppBar("Product name", isBack: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: AppTheme.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppTheme.violent),
                child: CustomText(
                  "Add",
                  fontWeight: FontWeight.w500,
                  fontSize: AppTheme.size16,
                  color: AppTheme.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: AppTheme.buttomBackColorLight,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.containerBoxBorder)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            Utils.customHeight(20),
            CarouselSlider.builder(
              itemCount: 3,
              options: CarouselOptions(
                viewportFraction: 1,
                initialPage: 0,
                aspectRatio: 2.2,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _selectedBannerIndex = index;
                  });
                },
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: Assets.images.fakeDashboardBanner.image(),
              ),
            ),
            Utils.customHeight(10),
            DotsIndicator(
              dotsCount: 3,
              position: _selectedBannerIndex,
              decorator: DotsDecorator(
                size: const Size.square(7.0),
                activeSize: const Size(15.0, 7.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0)),
              ),
            ),
            Utils.customHeight(10),
            Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.containerBoxBorder)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "Organic A2 Buffalo Mik (500 ML)",
                    fontWeight: FontWeight.w600,
                    fontSize: AppTheme.size16,
                    color: AppTheme.black,
                  ),
                  SizedBox(height: 4),
                  CustomText(
                    "A2 Buffalo milk is naturally obtained from the Indian For a buffalo breeds. When buffaloes from the family.",
                    fontWeight: FontWeight.w500,
                    fontSize: AppTheme.size12,
                    color: AppTheme.black1.withOpacity(0.6),
                  ),
                  Row(
                    children: [
                      CustomText(
                        "₹ 70,000",
                        fontSize: AppTheme.size18,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.black1,
                      ),
                      SizedBox(width: 15),
                      CustomText(
                        "₹85",
                        fontSize: AppTheme.size14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.black1.withOpacity(0.4),
                        decoration: TextDecoration.lineThrough,
                      ),
                      SizedBox(width: 15),
                      Assets.icon.star.svg(height: 15, width: 15),
                      SizedBox(width: 3),
                      CustomText(
                        "3.5",
                        fontSize: AppTheme.size14,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.black1,
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  CustomText(
                    "Inclusion of all taxes",
                    fontWeight: FontWeight.w500,
                    fontSize: AppTheme.size12,
                    color: AppTheme.black1.withOpacity(0.4),
                  ),
                ],
              ),
            ),
            Utils.customHeight(10),
            Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.containerBoxBorder)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "Description",
                    fontWeight: FontWeight.w600,
                    fontSize: AppTheme.size16,
                    color: AppTheme.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText("• ",
                          fontWeight: FontWeight.w500,
                          fontSize: AppTheme.size14,
                          color: AppTheme.black1.withOpacity(0.6)),
                      Flexible(
                        child: CustomText(
                            "A2 Buffalo Milk With your simple act of purchasing Radhe Gaushala Organic Milk and Milk Products, we have managed to enable more than 400 farmer families to earn a substantial income. 69% of what you pay for our milk is paid to our farmers. Refer Radhe Gaushala App to your family and friends and share good health With them while also enabling our farmers to lead a better life!  ",
                            fontWeight: FontWeight.w500,
                            fontSize: AppTheme.size12,
                            color: AppTheme.black1.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
