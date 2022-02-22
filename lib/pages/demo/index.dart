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
class DemoIndex extends StatefulWidget {
  _DemoIndexState createState() => _DemoIndexState();
}

class _DemoIndexState extends State<DemoIndex> {
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
            'demo页面',
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
                '文本单位使用：.sp，相当于前端的px，如30px == 30.sp',
                style: TextStyle(
                  height: 2,
                ),
              ),
              Text(
                '尺寸单位使用：.w，如750px == 750.w',
                style: TextStyle(
                  height: 2,
                ),
              ),
              Text(
                '蓝湖UI的尺寸设置为375*',
                style: TextStyle(
                  height: 2,
                ),
              ),
              Text(
                '常用颜色在yg_colors.dart，使用方法：YGColors.color51',
                style: TextStyle(
                  height: 2,
                ),
              ),
              Text(
                '新增页面需在app_pages.dart和app_routes.dart中配置，然后 “R” 更新代码，路由使用方法参考 readme 文件夹中的 getX路由.md',
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
