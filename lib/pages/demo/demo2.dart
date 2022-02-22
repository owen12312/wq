/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-06 22:01:51
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-06 22:16:33
 * @FilePath: \yu_gou_app\lib\pages\demo\demo2.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';

// demo2页面
class Demo2 extends StatefulWidget {
  _Demo2State createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'demo2页面',
            style: TextStyle(
              color: YGColors.color51,
              fontSize: 16.sp,
            ),
          ),
          elevation: 1.0,
          centerTitle: true,
          actions: <Widget>[
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                child: Center(
                  child: Text(
                    '保存',
                    style: TextStyle(
                      color: Color.fromARGB(255, 224, 17, 19),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                height: appbarHeight,
                padding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '我是demo2页面',
                style: TextStyle(
                  height: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
