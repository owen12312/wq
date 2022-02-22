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
import 'package:yu_gou_app/components/Card/index.dart';
import 'package:yu_gou_app/components/SubmitDiv/index.dart';
// demo页面
class FundingAdditionalProjects extends StatefulWidget {
  _FundingAdditionalProjectsState createState() => _FundingAdditionalProjectsState();
}

class _FundingAdditionalProjectsState extends State<FundingAdditionalProjects> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    void _goInvestmentAgreement() {
      Get.back();
    }
    void _goInvestmentRules() {
      Get.back();
    }
    
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "出资加入项目",
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
        actions:[
          TextButton(
            onPressed: () {_goInvestmentRules();},
            child: Text(
              '出资规则',
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            style: TextButton.styleFrom(primary: YGColors.color51, padding:const EdgeInsets.only(right: 20)),
          ),
        ],
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: ListView(
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
                      '爱帝宫月嫂上面服务005期',
                      style: TextStyle(
                        color: YGColors.color666666,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '发布期',
                      style: TextStyle(
                        color: YGColors.color666666,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '项目评级',
                      style: TextStyle(
                        color: YGColors.color666666,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                    ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                    ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
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
            height: 20.w,
            decoration: new BoxDecoration(
              color: YGColors.color244,
            )
          ),
          ListWidget(
            onTap: () {
              print("跳转到当前出资进度");
              Get.back();
            },
            isShowTopBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "当前出资进度",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ), 
            rightTitle:Text(
              "90%",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            islistHeight:false,
            rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            isShowRightArrow:false,
            importance:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)), 
            isShowBottomBorder: false,
          ),
          ListWidget(
            onTap: () {
              print("弹出选择出资金额");
              Get.back();
            },
            isShowTopBorder:false,
            isShowBottomBorder:true,
            leftTitle: Text(
              "选择出资金额",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ), 
            rightTitle:Text(
              "100000",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            listHeight: 20,
            islistHeight:false,
            rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            isShowRightArrow:true,
            importance:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
          ),
          const Spacer(),
          SubmitDivWidget(
            title:Text('下一步',style: TextStyle(color: Colors.white),),
            onTap:()=>{
              _goInvestmentAgreement()
            }
          )
        ],
      )
    );
  }
  
}
