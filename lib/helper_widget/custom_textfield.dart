import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radhe_gaushala/helper_widget/app_theme.dart';

class CommonTextField extends StatefulWidget {
  final String? initialText;
  final String title;
  final bool isPrefix;
  final bool isAutoFocus;
  final bool isTitle;
  final bool isTitleCenter;
  final bool isInitialTextCenter;
  final TextStyle? initialTextStyle;
  final String? subTitle;
  final Widget? subWidget;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final bool readOnly;
  final bool showBorder;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? formatter;
  final String? hintText;
  final VoidCallback? onTap;
  final Color? bgColor;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final TextStyle? hintStyle;
  final bool syncOnUpdate;
  final bool removePrefixPadding;
  final BoxConstraints? prefixIconConstraints;
  final FocusNode? focusNode;
  final bool? formatMobileNumber;
  final TextEditingController? controller;
  final bool enabledBorderColor;
  final Function(String)? onSubmit;
  final TextInputAction? textInputAction;
  final Color borderColor;
  final Color? FocusedBorderColor;
  final Color? cursorColor;
  final Color? textColor;
  final Key? textFieldKey;
  final bool needCursorAtLast;
  final Widget? prefix;
  final TextStyle? errorStyle;
  final String? label;
  final bool? obscureText;
  final Widget? floatingWidget;
  final bool isPrefilledDataBtn;
  final String? prefixText;
  final AutovalidateMode? autovalidateMode;
  final ToolbarOptions? toolbarOptions;

  const CommonTextField({
    Key? key,
    required this.title,
    this.obscureText,
    this.label,
    this.autovalidateMode,
    this.floatingWidget,
    this.errorStyle,
    this.needCursorAtLast = false,
    this.textFieldKey,
    this.prefix,
    this.isPrefix = false,
    this.isAutoFocus = false,
    this.showBorder = true,
    this.isTitle = true,
    this.isTitleCenter = false,
    this.isInitialTextCenter = false,
    this.initialTextStyle,
    this.subTitle,
    this.focusedBorder,
    this.controller,
    this.hintStyle,
    this.suffix,
    this.prefixIconConstraints,
    this.removePrefixPadding = false,
    this.prefixIcon,
    this.subWidget,
    this.suffixIcon,
    this.readOnly = false,
    this.onChanged,
    this.keyboardType,
    this.validator,
    this.initialText,
    this.onTap,
    this.maxLength,
    this.maxLines,
    this.bgColor,
    this.formatter,
    this.hintText,
    this.onSubmit,
    this.syncOnUpdate = false,
    this.enabledBorderColor = false,
    this.focusNode,
    this.textInputAction,
    this.textColor,
    this.formatMobileNumber = true,
    this.borderColor = const Color(0xffD4D4D4),
    this.FocusedBorderColor,
    this.isPrefilledDataBtn = false,
    this.cursorColor,
    this.minLines,
    this.prefixText = '',
    this.toolbarOptions,
  }) : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  TextEditingController? controller;

  @override
  void initState() {
    controller = widget.controller ??
        TextEditingController.fromValue(
            TextEditingValue(text: widget.initialText ?? ""));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CommonTextField oldWidget) {
    if (widget.initialText != null && widget.syncOnUpdate) {
      controller = widget.controller ??
          TextEditingController.fromValue(TextEditingValue(
              text: widget.initialText ?? "",
              selection: widget.initialText!.isNotEmpty
                  ? controller!.selection
                  : TextSelection.collapsed(offset: -1)));
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        widget.onTap?.call();
      },
      child: AbsorbPointer(
        absorbing: widget.isPrefilledDataBtn ? false : widget.readOnly,
        child: Stack(
          children: [
            // TextFormField(
            //   autovalidateMode: widget.autovalidateMode,
            //   autofocus: widget.isAutoFocus,
            //   minLines: widget.minLines,
            //   maxLines: widget.maxLines,
            //   cursorColor: AppTheme.black1,
            //   maxLength: widget.maxLength,
            //   readOnly: widget.readOnly,
            //   obscureText: widget.obscureText ?? false,
            //   focusNode: widget.focusNode,
            //   controller: controller,
            //   onTapOutside: (e) {
            //     FocusScope.of(context).unfocus();
            //   },
            //   toolbarOptions: widget.toolbarOptions,
            //   style: widget.initialTextStyle?.copyWith() ??
            //       TextStyle(
            //         fontFamily: AppTheme.Figtree,
            //         color: AppTheme.black1.withOpacity(0.9),
            //         fontWeight: FontWeight.w500,
            //         fontSize: AppTheme.size14,
            //       ),
            //   key: widget.textFieldKey,
            //   validator: widget.validator,
            //   onChanged: widget.onChanged,
            //   inputFormatters: widget.formatter,
            //   keyboardType: widget.keyboardType,
            //   decoration: InputDecoration(
            //     errorMaxLines: 2,
            //     counter: SizedBox.shrink(),
            //     prefixIcon: widget.prefix,
            //     suffixIcon: widget.suffixIcon,
            //     enabledBorder: UnderlineInputBorder(
            //         borderRadius: BorderRadius.circular(4),
            //         borderSide: BorderSide(
            //           color: Colors.black.withOpacity(0.1),
            //         )),
            //     // color: AppThemeV3.black.withOpacity(0.1),

            //     border: UnderlineInputBorder(
            //       borderRadius: BorderRadius.circular(4),
            //       borderSide: BorderSide(
            //         color: AppTheme.black1.withOpacity(0.1),
            //       ),
            //     ),
            //     focusedBorder: UnderlineInputBorder(
            //       borderRadius: BorderRadius.circular(4),
            //       borderSide: BorderSide(
            //         color: AppTheme.black1.withOpacity(0.1),
            //       ),
            //     ),
            //     errorBorder: UnderlineInputBorder(
            //       borderRadius: BorderRadius.circular(4),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //     errorStyle: TextStyle(
            //       color: Colors.red,
            //       fontWeight: FontWeight.w400,
            //       fontSize: AppTheme.size12,
            //       fontFamily: AppTheme.Figtree,
            //     ),
            //     labelStyle: TextStyle(
            //       color: AppTheme.black1.withOpacity(0.5),
            //       fontSize: AppTheme.size14,
            //       fontWeight: FontWeight.w400,
            //       fontFamily: AppTheme.Figtree,
            //     ),
            //     hintText: widget.hintText,
            //     hintStyle: TextStyle(
            //       color: AppTheme.black.withOpacity(0.4),
            //       fontSize: AppTheme.size14,
            //       fontWeight: FontWeight.w400,
            //       fontFamily: AppTheme.Figtree,
            //     ),
            //     suffix: widget.suffix,
            //     contentPadding:
            //         EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //     fillColor: widget.bgColor ?? AppTheme.white,
            //     filled: true,
            //     labelText:
            //         widget.title.isNotEmpty ? widget.title : widget.label,
            //     prefixText: widget.prefixText,
            //   ),
            //   onFieldSubmitted: (value) {
            //     widget.onSubmit?.call(value);
            //   },
            // ),

            TextFormField(
              controller: controller,
              focusNode: widget.focusNode,
              style: TextStyle(
                  color: AppTheme.black1,
                  fontWeight: FontWeight.w600,
                  fontSize: AppTheme.size14,
                  fontFamily: AppTheme.Figtree),
              keyboardType: widget.keyboardType ?? TextInputType.emailAddress,
              onChanged: widget.onChanged,
              autofocus: widget.isAutoFocus,
              maxLength: 10,
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: AppTheme.white,
                  hintText: widget.hintText,
                  hintStyle: widget.hintStyle ??
                      TextStyle(
                        color: AppTheme.black1.withOpacity(0.5),
                        fontSize: AppTheme.size14,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppTheme.Figtree,
                      ),
                  filled: true,
                  counterText: "",
                  prefixIcon: widget.prefixIcon,
                  suffix: widget.suffix,
                  suffixIcon: widget.suffixIcon,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: AppTheme.black1.withOpacity(0.15),
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: AppTheme.black1.withOpacity(0.5),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: AppTheme.black1.withOpacity(0.15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: AppTheme.black1.withOpacity(0.15),
                    ),
                  ),
                  labelText: widget.label,
                  labelStyle: TextStyle(
                      color: AppTheme.black1.withOpacity(0.5),
                      fontFamily: AppTheme.Figtree)),
            ),

            if (widget.floatingWidget != null)
              Positioned(
                right: 10,
                top: 13,
                child: widget.floatingWidget!,
              )
          ],
        ),
      ),
    );
  }
}
