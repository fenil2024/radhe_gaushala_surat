import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/strings.dart';
import 'dart:math' as math;

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({super.key});

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  List<bool> _isExpandedList = List.generate(7, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: customAppBar(kFAQS, isBack: true),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: _isExpandedList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.violentLight),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      if (!_isExpandedList[index])
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: CustomText('ગાયના દૂધના ઉત્પાદનો નો લાભ?',
                                fontSize: AppTheme.size14,
                                fontWeight: FontWeight.w500),
                            trailing: Assets.icon.downArrow.svg(),
                            onTap: () {
                              setState(() {
                                _isExpandedList[index] =
                                    !_isExpandedList[index];
                              });
                            },
                          ),
                        ),
                      if (_isExpandedList[index])
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isExpandedList[index] = !_isExpandedList[index];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppTheme.buttomBackColorLight,
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          "ગાયના દૂધના ઉત્પાદનો નો લાભ?",
                                          color: AppTheme.black,
                                          fontSize: AppTheme.size15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        Transform.rotate(
                                            angle: -math.pi,
                                            child: Assets.icon.downArrow.svg())
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    CustomText(
                                      "આ ગુણવત્તાને કારણે ગાયના દૂધ કરતાં દહીં વધુ સારું છે. દહીં ત્રિદોષનાશક છે, સરળતાથી બદલી શકાય તેવું છે, આંતરડા સાફ કરે છે, સ્વાદ વધારે છે, થાક દૂર કરે છે, શરીરમાં ઉર્જા, શુક્રાણુઓ અને માંસ વધારે છે, આ રીતે કાયાકલ્પ અને આયુષ્ય વધારશે. ગાય નું ઘી આખા શરીરને અંદરથી નર આર્દ્રતા આપે છે, કાયાકલ્પ કરે છે",
                                      color: AppTheme.black2,
                                      fontSize: AppTheme.size13,
                                      fontWeight: FontWeight.w400,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10)
            ],
          );
        },
      ),
    );
  }
}
