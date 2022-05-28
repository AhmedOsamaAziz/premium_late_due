import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premium_late_due/app/data/constants/styleConstants.dart';
import 'app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        textTheme: GoogleFonts.gothicA1TextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: KlightPallet.primaryColor,
            secondary: KlightPallet.secondColor),
      ),
    );
  }
}
