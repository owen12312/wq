import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:yu_gou_app/components/Card/index.dart';
class MonthlySalary extends StatelessWidget {
  const MonthlySalary({Key ?key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "月嫂薪资和额外服务支出说明",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: YGColors.color51,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          ),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(AssetImage("back_icon.png")),
              onPressed: () {_goBack();},
              color: YGColors.color51,
            );
          },
        ),
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: Container(
        child: ListView(
          children:<Widget> [
            MyCardWidget(
              height: 240.w,
              cardContainer: 
              Container(
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child:                     
                      Row(
                        children: [
                          Text('月嫂薪资标准（28天/每人）',
                            style: TextStyle(
                              color: YGColors.color51,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child:  Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.w,bottom: 10.w),
                            child:
                            Row(
                              children: [
                                Padding( 
                                  padding:EdgeInsets.only(right: 50.w),
                                  child: Text('服务等级',
                                    style: TextStyle(
                                      color: YGColors.color102,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding( 
                                  padding:EdgeInsets.only(right: 50.w),
                                  child: Text('薪资',
                                    style: TextStyle(
                                      color: YGColors.color102,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child:  Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.w,bottom: 10.w),
                            child:
                            Row(
                              children: [
                                Padding( 
                                  padding:EdgeInsets.only(right: 70.w),
                                  child: Text('三星',
                                    style: TextStyle(
                                      color: YGColors.color51,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding( 
                                  padding:EdgeInsets.only(right: 50.w),
                                  child: Text('¥8000',
                                    style: TextStyle(
                                      color: YGColors.color51,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.w),
                      child:  Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.w,bottom: 10.w),
                            child:
                            Row(
                              children: [
                                Padding( 
                                  padding:EdgeInsets.only(right: 70.w),
                                  child: Text('三星',
                                    style: TextStyle(
                                      color: YGColors.color51,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding( 
                                  padding:EdgeInsets.only(right: 50.w),
                                  child: Text('¥8000',
                                    style: TextStyle(
                                      color: YGColors.color51,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.w),
                      child:  Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.w,bottom: 10.w),
                            child:
                            Row(
                              children: [
                                Padding( 
                                  padding:EdgeInsets.only(right: 70.w),
                                  child: Text('三星',
                                    style: TextStyle(
                                      color: YGColors.color51,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding( 
                                  padding:EdgeInsets.only(right: 50.w),
                                  child: Text('¥8000',
                                    style: TextStyle(
                                      color: YGColors.color51,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border(
                      top:BorderSide(width: 0.5,color:YGColors.color220) ,
                    )
                ),
              ), onTap: () {  },
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            MyCardWidget(
              height: 240.w,
              cardContainer: 
              Container(
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child:                     
                      Row(
                        children: [
                          Text('月嫂薪资标准（28天/每人）',
                            style: TextStyle(
                              color: YGColors.color51,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child: Row(
                        children: [
                          Text(
                            '平台派遣月嫂   ¥500',
                            style: TextStyle(
                              color: YGColors.color51,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child: Row(
                        children: [
                          Text(
                            '平台加入项目月嫂    ¥300',
                            style: TextStyle(
                              color: YGColors.color51,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), onTap: () {  },
            ),
          ],
        ),
      ),
    );
  }
}