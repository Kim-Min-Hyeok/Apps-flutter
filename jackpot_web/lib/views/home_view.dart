import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //웹 헤드라인
        Row(
          children: [
            Container(
              width: 250.w,
            ),
            Image.asset(
              "assets/images/jackpot_logo_white.png",
              width: 50.w,
            ),
            Container(
              width: 10.w,
            ),
            Text("Jackpot"),
            Container(
              width: 10.w,
            ),
            Text("세상에 나오지 않은 프로젝트를 터뜨리다"),
            Container(
              width: 74.w,
            ),
            Container(width: 350.w, height: 40.h, child: TextField()),
            Container(width: 15.w),
            GestureDetector(
              child: Image.asset(search),
              onTap: () => {},
            ),
            Container(width: 14.95.w),
            Container(
              width: 250.w,
            ),
          ],
        ),
        Row(),
        Divider(),
        Row(
          children: [
            //adv
            //gridview
            //adv
          ],
        )
      ]),
    );
  }
}
