import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/utility/strings.dart';

class GalleyView extends StatefulWidget {
  const GalleyView({super.key});

  @override
  State<GalleyView> createState() => _GalleyViewState();
}

class _GalleyViewState extends State<GalleyView>
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
      appBar: customAppBar(
        kGallery,
        isBack: true,
        bottomTab: TabBar(
          controller: _tabController,
          padding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          dividerColor: AppTheme.buttomBackColorLight,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 2.0, color: AppTheme.violent),
            insets: EdgeInsets.symmetric(horizontal: 30.0),
          ),
          tabs: [
            Tab(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                    ),
                    CustomText(
                      "Photos",
                      color: selectedIndex == 0
                          ? AppTheme.violent
                          : AppTheme.black,
                      fontWeight: selectedIndex == 0
                          ? FontWeight.w600
                          : FontWeight.w400,
                    ),
                    Container(height: 25, width: 1, color: AppTheme.grey2),
                  ],
                ),
                color: AppTheme.buttomBackColorLight,
              ),
            ),
            Tab(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: CustomText("Videos",
                    fontWeight:
                        selectedIndex == 1 ? FontWeight.w600 : FontWeight.w400,
                    color:
                        selectedIndex == 1 ? AppTheme.violent : AppTheme.black),
                color: AppTheme.buttomBackColorLight,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          photosViewer(),
          videosViewer(),
        ],
      ),
    );
  }

  photosViewer() {
    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(4)),
            child: Text("index: $index"),
          );
        });
  }

  videosViewer() {
    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                child: Text("index: $index"),
              ),
              Assets.icon.videoPlayer.svg()
            ],
          );
        });
  }
}
