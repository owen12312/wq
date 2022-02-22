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
class ProjectFundingDetails extends StatefulWidget {
  _ProjectFundingDetailsState createState() => _ProjectFundingDetailsState();
}

class _ProjectFundingDetailsState extends State<ProjectFundingDetails> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    void _CapitalContributionPartnershipAgreement() {
      Get.back();
    }
    
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "项目出资详情",
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
                height: 300.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '出资项目：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '爱帝宫月嫂上门服务005期',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '项目评级：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                        ),
                        ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                        ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                        ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '出资金额：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '1000000',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '出资时间：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '2020-12-26 22：09',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '出资状态：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '出资失败',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '股权认证：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '未完成',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '当期项目状态：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '已解散',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '资金状态：',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: 
                          Text(
                            '已返还',
                            style: TextStyle(
                              color: YGColors.color333333,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                decoration:  BoxDecoration(
                color: Colors.white,
                  border: Border(
                    top: BorderSide(color:YGColors.color220,width: 0.5.w )
                  )
                )
              ),
              Container(
                height: 15.w,
                decoration:  BoxDecoration(
                  color: YGColors.color244,
                )
              ),
              Container(
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                height: 50.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '出资协议已作废,查看',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            '《出资合伙协议》',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: YGColors.colorE60012,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            _CapitalContributionPartnershipAgreement();
                          },
                          style: TextButton.styleFrom(
                            primary: YGColors.colorE60012,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: new BoxDecoration(
                color: Colors.white,
                  // border: Border(
                  //   top: BorderSide(color:YGColors.color220,width: 0.5.w )
                  // )
                )
              ),
            ],
          ),
          decoration: new BoxDecoration(
            color: Colors.white,
          )
        )
    );
  }
  
}
