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
import 'package:yu_gou_app/components/List/index.dart';
// demo页面
class ProjectOrders extends StatefulWidget {
  const ProjectOrders({Key? key}) : super(key: key);

  @override
  _ProjectOrdersState createState() => _ProjectOrdersState();
}

class _ProjectOrdersState extends State<ProjectOrders> {
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
          "项目订单",
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
        child: 
          ListView(
            children: <Widget>[
            // ListWidget(
            //   onTap: () {
            //     // Get.back();
            //   },
            //   isShowTopBorder:false,
            //   isShowBottomBorder: false,
            //   leftTitle: Text(
            //     "拦服家政服务",
            //     style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            //   ), 
            // ),
            ListWidget(
              onTap: () {
                Get.back();
              },
              isShowTopBorder:false,
              isShowBottomBorder:true,
              leftTitle: Text(
                "拦服家政服务",
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ), 
              rightTitle: const Text( ""),
              listHeight: 20,
              islistHeight:false,
              rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
              iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
              isShowRightArrow:true,
              importance:false,
              iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
            ),
            Container(
              height: 15.w,
              decoration:  BoxDecoration(
                color: YGColors.color244,
              )
            ),
            ListWidget(
              onTap: () {
                Get.back();
              },
              isShowTopBorder:false,
              isShowBottomBorder:true,
              leftTitle: Text(
                "拦服家政服务",
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ), 
              rightTitle: const Text( ""),
              listHeight: 20,
              islistHeight:false,
              rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
              iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
              isShowRightArrow:true,
              importance:false,
              iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
            ),
          ],
          )
        ,
        decoration:  BoxDecoration(
          border: Border(
            top: BorderSide(color:YGColors.color220,width: 0.5.w )
          )
        )
      ) 
    );
  }
  
}
