import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jackpot_web/utilities/app_theme.dart';
import 'package:jackpot_web/views/announcement_view.dart';
import 'package:jackpot_web/views/home_view.dart';
import 'package:jackpot_web/views/setting_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1512, 982),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.regularTheme,
        // builder: (BuildContext context, Widget? child) {
        //   final data = MediaQuery.of(context);
        //   return MediaQuery(
        //       data: data.copyWith(
        //           textScaleFactor: 1.0),//  >= 1.4 ? 1.4 : 1.0
        //       child: child!);
        // },
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => HomeView()),
          GetPage(name: '/announcement', page: () => AnnouncementView()),
          GetPage(name: '/setting', page: () => settingView()),
        ],
      ),
    );
  }
}
