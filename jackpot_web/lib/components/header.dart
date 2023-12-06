import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jackpot_web/controllers/post_grid_controller.dart';

class Header extends StatelessWidget {
  final double width;
  final BuildContext context;
  final PostGridController _postGridController = Get.put(PostGridController());

  Header(
    this.width,
    this.context, {
    super.key,
  });

  @override
  Widget build(context) {
    return Obx(() => Column(
          children: [
            SizedBox(
              width: width,
              height: 50.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/jackpot_logo_white.png",
                    width: 50.h,
                    height: 50.w,
                  ),
                  Container(
                    width: 10.w,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 120.w,
                        child: Center(
                          child: Text("Jackpot",
                              style: TextStyle(
                                fontFamily: "Pretendard",
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      Container(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 202.w,
                        height: 21.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Center(
                              child: Text(
                                "세상에 나오지 않은 프로젝트를 터뜨리다",
                                style: TextStyle(
                                  fontFamily: "Pretendard",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
                                  height: 18.sp / 14.sp,
                                  color: const Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 74.w,
                  ),
                  Container(
                      width: 350.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2.w)),
                      child: TextField()),
                  Container(width: 15.w),
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/btn_search.png",
                      width: 41.05.w,
                      height: 40.h,
                    ),
                    onTap: () => {},
                  ),
                  Container(width: 14.95.w),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        width: 135.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Container(
                            width: 69.w,
                            height: 30.h,
                            child: Center(
                              child: Text("로그인",
                                  style: TextStyle(
                                    fontFamily: "Pretendard",
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 28.sp / 24.sp,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      onTap: () => {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 42.h,
            ),
            Container(
              width: width,
              height: 30.h,
              child: Row(
                children: [
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/btn_menu.png",
                      width: 34.43.w,
                      height: 30.h,
                    ),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  if (_postGridController.sortAs.value == "메이트 모집" ||
                      _postGridController.sortAs.value == "프로젝트 판매")
                    headerTitle1(context)
                  else if (_postGridController.sortAs.value == "공지사항" ||
                      _postGridController.sortAs.value == "설정")
                    headerTitle2(context)
                  else if (_postGridController.sortAs.value == "마이페이지")
                    headerTitle3(context)
                  else
                    headerTitle4(context)
                ],
              ),
            ),
            Container(
              height: 21.h,
            ),
            Container(
              width: 1012.w,
              height: 3.h,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ));
  }

  Widget headerTitle1(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 686.57.w,
        ),
        GestureDetector(
          child: Text(
            "메이트 모집",
            style: TextStyle(
              fontFamily: "Pretendard",
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              height: 28.sp / 24.sp,
              color: _postGridController.sortAs.value == "메이트 모집"
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
            ),
          ),
          onTap: () {
            _postGridController.sortAs.value = "메이트 모집";
          },
        ),
        Container(
          width: 25.w,
        ),
        GestureDetector(
          child: Text(
            "프로젝트 판매",
            style: TextStyle(
              fontFamily: "Pretendard",
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              height: 28.sp / 24.sp,
              color: _postGridController.sortAs.value == "프로젝트 판매"
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
            ),
          ),
          onTap: () {
            _postGridController.sortAs.value = "프로젝트 판매";
          },
        ),
      ],
    );
  }

  Widget headerTitle2(BuildContext context) {
    return Row(
      children: [
        Container(
            width: _postGridController.sortAs.value == "공지사항"
                ? 885.57.w
                : 931.57.w),
        Text(
          _postGridController.sortAs.value == "공지사항" ? "공지사항" : "설정",
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            height: 28.sp / 24.sp,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  Widget headerTitle3(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 506.57.w,
        ),
        GestureDetector(
          child: Container(
            width: 131.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                Text(
                  "새 게시물",
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    height: 28.sp / 24.sp,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                Image.asset(
                  "assets/images/btn_plus.png",
                  width: 20.w,
                  height: 20.h,
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
        Container(
          width: 25.w,
        ),
        GestureDetector(
          child: Text(
            "스크랩 글",
            style: TextStyle(
              fontFamily: "Pretendard",
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              height: 28.sp / 24.sp,
              color: _postGridController.sortAs.value == "스크랩 글"
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
            ),
          ),
          onTap: () {
            _postGridController.sortAs.value = "스크랩 글";
          },
        ),
        Container(
          width: 25.w,
        ),
        GestureDetector(
          child: Text(
            "내 게시물",
            style: TextStyle(
              fontFamily: "Pretendard",
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              height: 28.sp / 24.sp,
              color: _postGridController.sortAs.value == "내 게시물"
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primary,
            ),
          ),
          onTap: () {
            _postGridController.sortAs.value = "내 게시물";
          },
        ),
      ],
    );
  }

  Widget headerTitle4(BuildContext context) {
    return Container(
      width: 977.57.w,
      child: Center(
        child: Text(
          "프로젝트 제목",
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
            height: 28.sp / 24.sp,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
