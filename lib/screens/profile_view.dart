import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/strings.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.animation?.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          selectedIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: customAppBar(kProfile,
          isBack: true,
          showActions: true,
          customActionWidget: [
            GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.transparent,
                height: 50,
                width: 50,
                padding: EdgeInsets.only(right: 10, top: 12, bottom: 12),
                child: Assets.icon.editProfile.svg(),
              ),
            )
          ]),
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: screenHeight! / 9,
              width: screenHeight! / 9,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
            ),
            SizedBox(height: 5),
            CustomText(
              "Mitesh sakhiya",
              fontSize: AppTheme.size16,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 3),
            CustomText(
              "User ID :- 45654",
              fontSize: AppTheme.size14,
              fontWeight: FontWeight.w400,
              color: AppTheme.black.withOpacity(0.5),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: TabBar(
                controller: _tabController,
                padding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                dividerColor: AppTheme.divider,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.0, color: AppTheme.violent),
                ),
                tabs: [
                  Tab(
                    child: CustomText(
                      "Personal Details",
                      color:
                          selectedIndex == 0 ? AppTheme.black1 : AppTheme.grey4,
                      fontWeight: selectedIndex == 0
                          ? FontWeight.w600
                          : FontWeight.w400,
                    ),
                  ),
                  Tab(
                    child: CustomText("Family Details",
                        fontWeight: selectedIndex == 1
                            ? FontWeight.w600
                            : FontWeight.w400,
                        color: selectedIndex == 1
                            ? AppTheme.black1
                            : AppTheme.grey4),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [personalDetails(), familyDetails()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget personalDetails() {
    return Container(
        width: screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          commonTitleValueText("Mobile Number (મોબાઈલ નંબર)", "+91 9876543210"),
          commonTitleValueText("Email ID (ઇમેઇલ આઈડી)", "demo@example.com"),
          commonTitleValueText("Society (સોસાયટી)", "Sarita Row House"),
          commonTitleValueText(
              "Address (સરનામું)", "A-2,302 Sarita Row House, Surat 395006."),
          commonTitleValueText("Total Family Member (કુટુંબના કુલ સભ્ય)", "03"),
        ]));
  }

  Widget familyDetails() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              commonTitleValueText("Name (નામ)", "Meet Sakhiya"),
              commonTitleValueText("Relationship (સંબંધ)", "Son"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              commonTitleValueText("Date Of Birth (જન્મ તારીખ)", "05/06/2005"),
              commonTitleValueText("Milk Tyap (દૂધનો પ્રકાર))", "Cow"),
            ],
          ),
          Row(
            children: [
              commonTitleValueText("Gender (જાતિ)", "Male"),
            ],
          ),
        ]));
  }

  Widget commonTitleValueText(String text, String value) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 3),
      CustomText(
        text,
        color: AppTheme.black1.withOpacity(0.5),
        fontWeight: FontWeight.w400,
        fontSize: AppTheme.size13,
      ),
      SizedBox(height: 2),
      CustomText(
        value,
        color: AppTheme.black1,
        fontWeight: FontWeight.w600,
        fontSize: AppTheme.size14,
      ),
      Divider(
        color: AppTheme.divider,
        thickness: 0.5,
      ),
      SizedBox(height: 5)
    ]);
  }
}
