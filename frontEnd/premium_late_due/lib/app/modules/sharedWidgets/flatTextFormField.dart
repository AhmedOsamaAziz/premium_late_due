import 'package:flutter/material.dart';
import 'package:premium_late_due/app/data/constants/styleConstants.dart';

class FlatTextFormField extends StatelessWidget {
  const FlatTextFormField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      this.postfixIcon,
      this.maxLength,
      required this.onSaved,
      this.enabled,
      required this.controller})
      : super(key: key);

  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? postfixIcon;
  final int? maxLength;
  final FormFieldSetter<String> onSaved;
  final bool? enabled;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(kBorderRadius),
      shadowColor: KlightPallet.primaryColor,
      // borderRadius: BorderRadius.circular(50),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: prefixIcon,
          hoverColor: KlightPallet.secondColorHover,
          focusColor: Colors.red, //KlightPallet.secondColorfOCUS,
          fillColor: KlightPallet.secondBackgroundColor,
          filled: true,
          // border: InputBorder.none,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          // focusedBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(kBorderRadius),
          //   ),
          //   borderSide: BorderSide(color: KlightPallet.primaryColor),
          // ),
        ),
        autofocus: true,
        obscureText: true,
        style: const TextStyle(fontSize: 12),
        controller: controller,
        maxLength: maxLength,
        onSaved: onSaved,

        // enabled: enabled,
      ),
    );
  }
}
