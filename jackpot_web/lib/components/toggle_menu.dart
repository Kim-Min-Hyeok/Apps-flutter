import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jackpot_web/controllers/post_grid_controller.dart';

class ToggleMenu extends StatelessWidget {
  final PostGridController _postGridController = Get.put(PostGridController());

  ToggleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      child: Column(
        children: [
          Container(
            height: 154.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40.w,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '문의',
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w600,
                          height: 28.sp / 24.sp,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Container(
                        height: 20.h,
                      ),
                      Text(
                        'kkmin11203@gmail.com',
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w300,
                          height: 24.sp / 20.sp,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          Container(
            height: 2.h,
            color: Theme.of(context).colorScheme.primary,
          ),
          GestureDetector(
            child: Container(
              width: 300.w,
              height: 70.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40.w,
                  ),
                  Text(
                    '공지사항',
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      height: 28.sp / 24.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              _postGridController.sortAs.value = "공지사항";
              Get.toNamed('/announcement');
            },
          ),
          Container(
            height: 2.h,
            color: Theme.of(context).colorScheme.primary,
          ),
          GestureDetector(
            child: Container(
              width: 300.w,
              height: 70.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40.w,
                  ),
                  Text(
                    '설정',
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                      height: 28.sp / 24.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              _postGridController.sortAs.value = "설정";
              Get.toNamed('/setting');
            },
          ),
          Container(
            height: 2.h,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
