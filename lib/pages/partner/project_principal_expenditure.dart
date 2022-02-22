/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-06 22:01:51
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-06 22:14:18
 * @FilePath: \yu_gou_app\lib\pages\demo\index.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
// demo页面
class ProjectPrincipalExpenditure extends StatefulWidget {
  _ProjectPrincipalExpenditureState createState() => _ProjectPrincipalExpenditureState();
}

class _ProjectPrincipalExpenditureState extends State<ProjectPrincipalExpenditure> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "项目本金支出记录",
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
              icon: ImageIcon(AssetImage("back_icon.png")),
              onPressed: () {_goBack();},
              color: YGColors.color51,
            );
          },
        ),
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: 
      Container(
        child:
        ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15.w,right: 15.w),
              height: 80.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '支出金额：100000',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '正在表决',
                        style: TextStyle(
                          color: YGColors.colorE60012,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2020-12-22 10：36',
                        style: TextStyle(
                          color: YGColors.color666666,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: new BoxDecoration(
              color: Colors.white,
                border: Border(
                  top: BorderSide(color:YGColors.color220,width: 0.5.w )
                )
              )
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            Container(
              padding: EdgeInsets.only(left: 15.w,right: 15.w),
              height: 80.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '支出金额：100000',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '表决失败',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2020-12-22 10：36',
                        style: TextStyle(
                          color: YGColors.color666666,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: new BoxDecoration(
              color: Colors.white,
                // border: Border(
                //   bottom: BorderSide(color:YGColors.color220,width: 0.5.w )
                // )
              )
            ),
          ],
        ),
        // decoration: new BoxDecoration(
        //   color: Colors.white,
        // )
      )
    );
  }
  
}
