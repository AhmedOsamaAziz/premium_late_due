import 'package:flutter/material.dart';
import 'package:premium_late_due/app/data/constants/styleConstants.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key, this.text, this.icon, this.height})
      : super(key: key);
  final String? text;
  final IconData? icon;
  final double? height;
  @override
  Widget build(BuildContext context) => SizedBox(
        height: height ?? 40.0,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(KlightPallet.primaryColor),
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBorderRadius),
                side: const BorderSide(color: KlightPallet.primaryColor),
              ),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    text!,
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(icon),
              ],
            ),
          ),
          onPressed: () {},
        ),
      );
}
