import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:radhe_gaushala/cubits/bloc_events.dart';
import 'package:radhe_gaushala/cubits/homepage/homepage_state.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/helper_widget/row_icon_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/routes.dart';
import 'package:radhe_gaushala/utility/strings.dart';
import 'package:radhe_gaushala/utility/utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> homePageKey = GlobalKey();

  int _selectedDrawerindex = -1;

  int _selectedBannerIndex = 0;

  @override
  Widget build(BuildContext context) {
    Utils.getSize(context);
    return Scaffold(
      key: homePageKey,
      backgroundColor: AppTheme.white,
      drawerEnableOpenDragGesture: false,
      drawer: Container(
        decoration: BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        width: screenWidth! / 1.4,
        height: screenHeight,
        child: Column(children: [
          SizedBox(height: screenHeight! / 14),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: screenWidth,
              child: Row(
                children: [
                  Container(
                    height: screenHeight! / 12,
                    width: screenHeight! / 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            "Mitesh sakhiya",
                            fontSize: AppTheme.size16,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            "C0056",
                            fontSize: AppTheme.size14,
                            fontWeight: FontWeight.w400,
                            color: AppTheme.black.withOpacity(0.5),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight! / 50),
          Divider(
            color: AppTheme.divider.withOpacity(0.6),
          ),
          SizedBox(height: screenHeight! / 50),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: drawerMenu.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDrawerindex = i;
                        });
                        if (_selectedDrawerindex == 2) {
                          BlocEvent.pushAndRemoveUntil(Routes.paidBillHistory,
                              rootRoute: Routes.homePage);
                        } else if (_selectedDrawerindex == 0) {
                          BlocEvent.pushAndRemoveUntil(Routes.profileView,
                              rootRoute: Routes.homePage);
                        } else if (_selectedDrawerindex == 3) {
                          BlocEvent.pushAndRemoveUntil(Routes.pendingBill,
                              rootRoute: Routes.homePage);
                        } else if (_selectedDrawerindex == 4) {
                          BlocEvent.pushAndRemoveUntil(
                              Routes.transactionHistory,
                              rootRoute: Routes.homePage);
                        } else if (_selectedDrawerindex == 8) {
                          BlocEvent.pushAndRemoveUntil(Routes.gallery,
                              rootRoute: Routes.homePage);
                        } else if (_selectedDrawerindex == 9) {
                          BlocEvent.pushAndRemoveUntil(Routes.faqsScreen,
                              rootRoute: Routes.homePage);
                        }
                      },
                      child: Column(
                        children: [
                          rowIconText(drawerMenu[i]['icon'],
                              drawerMenu[i]['text'], _selectedDrawerindex == i),
                          Utils.customHeight(25)
                        ],
                      ),
                    );
                  }),
            ),
          )
        ]),
      ),
      appBar: customAppBar(radheGaushala,
          showActions: true,
          onTap: () => homePageKey.currentState!.openDrawer()),
      body: SingleChildScrollView(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     CustomText(
                //       "Current Month",
                //       fontSize: AppTheme.size18,
                //       fontWeight: FontWeight.w600,
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      "Product Category",
                      fontSize: AppTheme.size18,
                      fontWeight: FontWeight.w600,
                    ),
                    GestureDetector(
                      onTap: () => BlocEvent.push(Routes.productCategories),
                      child: CustomText(
                        "View All",
                        fontSize: AppTheme.size14,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.violent,
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          BlocEvent.pushAndRemoveUntil(Routes.productDetails,
                              rootRoute: Routes.homePage);
                        },
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.images.fakeButtermilk
                                  .image(height: 70, width: 70),
                              Utils.customHeight(7),
                              CustomText(
                                "Milk(દૂધ)",
                                fontSize: AppTheme.size13,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                Utils.customHeight(20),
              ],
            ),
          )
        ]),
      ),
    );
  }
}


// ExpansionTile(
//                     title: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CustomText('August, 2024',
//                             fontSize: AppTheme.size14,
//                             fontWeight: FontWeight.w500),
//                         CustomText(
//                           '₹200',
//                           fontSize: AppTheme.size14,
//                           fontWeight: FontWeight.w500,
//                           color: AppTheme.violent,
//                         )
//                       ],
//                     ),
//                     leading: Assets.icon.currentMonth.svg(),
//                     children: [
//                       ListTile(title: Text('Child Tile 1')),
//                       ListTile(title: Text('Child Tile 2')),
//                     ],
//                   )
