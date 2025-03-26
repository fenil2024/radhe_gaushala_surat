import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_bar.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/helper_widget/formatted_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';
import 'package:radhe_gaushala/utility/strings.dart';
import 'package:radhe_gaushala/utility/utils.dart';

class PaidBillHistory extends StatefulWidget {
  const PaidBillHistory({super.key});

  @override
  State<PaidBillHistory> createState() => _PaidBillHistoryState();
}

class _PaidBillHistoryState extends State<PaidBillHistory> {
  List<bool> _isExpandedList = List.generate(7, (_) => false);

  Widget historyData(String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: formatedTextTapable(
        rawText: "$key : #*$value*#",
        normalStyle: TextStyle(
          color: AppTheme.grey1,
          fontSize: AppTheme.size14,
        ),
        formateStyle: TextStyle(
          color: AppTheme.black,
          decorationThickness: 1,
          fontWeight: FontWeight.w500,
          fontSize: AppTheme.size14,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: customAppBar(paidBillHistoryT, isBack: true),
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
                    border: Border.all(color: AppTheme.divider),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      if (!_isExpandedList[index])
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText('August, 2024',
                                    fontSize: AppTheme.size14,
                                    fontWeight: FontWeight.w500),
                                CustomText(
                                  '₹200',
                                  fontSize: AppTheme.size14,
                                  fontWeight: FontWeight.w500,
                                  color: AppTheme.violent,
                                )
                              ],
                            ),
                            leading: Assets.icon.currentMonth.svg(),
                            trailing: Assets.icon.rightArrow.svg(),
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
                            color: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    historyData("Month", "September"),
                                    Assets.icon.downArrow.svg()
                                  ],
                                ),
                                historyData("Date", "30 Apr 2024"),
                                historyData("Payment Date", "13 May 2024"),
                                historyData("Payment Type", "Razorpay"),
                                historyData(
                                    "Transaction Id", "Payment Success"),
                                historyData("Status", "Error"),
                                historyData("Time", "11:53:54"),
                              ],
                            ),
                          ),
                        ),
                      if (_isExpandedList[index])
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: CustomText(
                            "Amount : ₹200.0",
                            color: AppTheme.violent,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.buttomBackColorLight,
                            border: Border.all(
                                color: AppTheme.violent.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      if (_isExpandedList[index]) Utils.customHeight(15)
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
