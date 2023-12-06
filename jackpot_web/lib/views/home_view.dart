import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jackpot_web/components/header.dart';
import 'package:jackpot_web/components/post_grid.dart';
import 'package:jackpot_web/components/toggle_menu.dart';

class HomeView extends StatelessWidget {
  

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Row(
        children: [
          Container(
            width: 250.w,
          ),
          Column(children: [
            //웹 헤드라인
            Container(
              height: 31.h,
            ),
            Header(1012.w, context),
            //PostGrid(1012.w, 50, 3),
          ]),
          Container(
            width: 250.w,
          ),
        ],
      ),
      drawer: ToggleMenu(),
    );
  }
}
