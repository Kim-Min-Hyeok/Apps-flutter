import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jackpot_web/components/header.dart';
import 'package:jackpot_web/components/toggle_menu.dart';

class settingView extends StatelessWidget {
  const settingView({super.key});

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
            Container(height: 300.h,),
            Center(
              child: Text('준비중',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
            )
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
