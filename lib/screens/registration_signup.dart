import 'package:flutter/material.dart';
import 'package:radhe_gaushala/gen/assets.gen.dart/assets.gen.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';
import 'package:radhe_gaushala/helper_widget/custom_text.dart';
import 'package:radhe_gaushala/helper_widget/custom_textfield.dart';
import 'package:radhe_gaushala/helper_widget/shaded_row_line_text.dart';
import 'package:radhe_gaushala/utility/globals.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            (screenHeight! / 8).toInt().toHeight,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth! / 6,
              ),
              child: Assets.icon.loginBackground.image(),
            ),
            30.toHeight,
            shadedRowLineText("Register / Sign Up"),
            30.toHeight,
            CommonTextField(
              title: "",
              label: 'Refer Code (રેફર કોડ)',
              hintStyle: TextStyle(
                color: AppTheme.black1.withOpacity(0.5),
                fontSize: AppTheme.size14,
                fontWeight: FontWeight.w400,
                fontFamily: AppTheme.Figtree,
              ),
              showBorder: true,
              enabledBorderColor: true,
              keyboardType: TextInputType.number,
              maxLength: 10,
              borderColor: AppTheme.black1.withOpacity(0.5),
            ),
            20.toHeight,
            CommonTextField(
              title: "",
              label: 'Full Name * (પૂરું નામ)',
              hintStyle: TextStyle(
                color: AppTheme.black1.withOpacity(0.5),
                fontSize: AppTheme.size14,
                fontWeight: FontWeight.w400,
                fontFamily: AppTheme.Figtree,
              ),
              showBorder: true,
              enabledBorderColor: true,
              maxLength: 10,
              borderColor: AppTheme.black1.withOpacity(0.5),
            ),
            20.toHeight,
            CommonTextField(
                title: "",
                label: 'Mobile Number * (મોબાઈલ નંબર)',
                hintText: "Ex. 987654310",
                hintStyle: TextStyle(
                  color: AppTheme.black1.withOpacity(0.5),
                  fontSize: AppTheme.size14,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppTheme.Figtree,
                ),
                showBorder: true,
                enabledBorderColor: true,
                maxLength: 10,
                borderColor: AppTheme.black1.withOpacity(0.5),
                keyboardType: TextInputType.number,
                isPrefix: true,
                prefixIcon: SizedBox(
                  width: screenWidth! / 6,
                  child: Row(
                    children: [
                      CustomText(
                        "   +91   ",
                        fontWeight: FontWeight.w600,
                        fontSize: AppTheme.size14,
                        color: AppTheme.black1,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        "| ",
                        fontWeight: FontWeight.w600,
                        fontSize: AppTheme.size14,
                        color: AppTheme.black1.withOpacity(0.20),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )),
            20.toHeight,
            CommonTextField(
              title: "",
              readOnly: true,
              label: 'Society * (સોસાયટી)',
              hintText: "Select your society",
              hintStyle: TextStyle(
                color: AppTheme.black1.withOpacity(0.5),
                fontSize: AppTheme.size14,
                fontWeight: FontWeight.w400,
                fontFamily: AppTheme.Figtree,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Assets.icon.downArrow.svg(color: AppTheme.black1),
              ),
              showBorder: true,
              enabledBorderColor: true,
              maxLength: 10,
              borderColor: AppTheme.black1.withOpacity(0.5),
            ),
            40.toHeight,
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppTheme.violent),
              child: CustomText(
                "Register",
                fontWeight: FontWeight.w500,
                fontSize: AppTheme.size16,
                color: AppTheme.white,
                textAlign: TextAlign.center,
              ),
            ),
            10.toHeight
          ]),
        ),
      ),
    );
  }
}
