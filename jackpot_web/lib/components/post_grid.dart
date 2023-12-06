import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jackpot_web/controllers/post_grid_controller.dart';

class PostGrid extends StatelessWidget {
  final double width;
  final int count;
  final int crossCount;
  final PostGridController _postGridController = Get.put(PostGridController());

  PostGrid(
    this.width,
    this.count,
    this.crossCount,
    {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
        ),
        Expanded(
          child: SizedBox(
            width: width,
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossCount,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0.h),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              // width: 300.w,
                              // height: 180.h,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              // width: 300.w,
                              // height: 120.h,
                              color: Colors.blue,
                              child: Text("$index"),
                            ),
                          )
                        ],
                      ));
                }),
          ),
        ),
      ],
    );
  }
}
