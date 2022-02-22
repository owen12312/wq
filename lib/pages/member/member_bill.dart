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
class MemberBill extends StatefulWidget {
  _MemberBillState createState() => _MemberBillState();
}

class _MemberBillState extends State<MemberBill> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    // void _goCopy() {
    //   Get.back();
    // }
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "账单",
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
        // actions:<Widget>[
        //   IconButton(
        //     icon: ImageIcon(AssetImage("doubt.png"),size: 22.w,),
        //     onPressed: () {_goBack();},
        //     color: YGColors.color51,
        //   ),
        // ],
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body:Container(
        child: 
          ListView(
            children: <Widget>[
              Container(
                height: 75.w,
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color:YGColors.color220,width: 0.5.w )
                  )
                ),
                child:
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                      <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('礼金总收入',style: TextStyle(fontSize: 17.sp,color: YGColors.colorE60012),),
                                    Text('(共5笔)',style: TextStyle(fontSize: 12.sp,color: YGColors.colorE60012))
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(2.w)),
                                Row(
                                  children: [
                                    Text('280000',style: TextStyle(fontSize: 17.sp,color: YGColors.colorE60012),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          
                          flex: 2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection:TextDirection.rtl,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('礼金总支出',style: TextStyle(fontSize: 17.sp,color: YGColors.color333333),),
                                    Text('(共3笔)',style: TextStyle(fontSize: 12.sp,color: YGColors.color333333))
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(2.w)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('2000000',style: TextStyle(fontSize: 17.sp,color: YGColors.color333333),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                  ), 
              ),
              Container(
                height: 20.w,
                decoration: new BoxDecoration(
                  color: YGColors.color244,
                  
                )
              ),
              Container(
                height: 75.w,
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color:YGColors.colorD5DCFE,width: 0.5.w )
                  )
                ),
                child:
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                      <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('送礼金',style: TextStyle(fontSize: 15.sp,color: YGColors.color333333),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(2.w)),
                                Row(
                                  children: [
                                    Text('2021-06-15',style: TextStyle(fontSize: 12.sp,color: YGColors.color666666),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection:TextDirection.rtl,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('-200',style: TextStyle(fontSize: 18.sp,color: YGColors.color333333),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                  ),
              ),
              Container(
                height: 75.w,
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color:YGColors.colorD5DCFE,width: 0.5.w )
                  )
                ),
                child:
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                      <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('送礼金',style: TextStyle(fontSize: 15.sp,color: YGColors.color333333),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(2.w)),
                                Row(
                                  children: [
                                    Text('2021-06-15',style: TextStyle(fontSize: 12.sp,color: YGColors.color666666),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection:TextDirection.rtl,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('-200',style: TextStyle(fontSize: 18.sp,color: YGColors.color333333),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                  ),
              ),
              Container(
                height: 75.w,
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color:YGColors.colorD5DCFE,width: 0.5.w )
                  )
                ),
                child:
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                      <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('送礼金',style: TextStyle(fontSize: 15.sp,color: YGColors.color333333),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(2.w)),
                                Row(
                                  children: [
                                    Text('2021-06-15',style: TextStyle(fontSize: 12.sp,color: YGColors.color666666),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection:TextDirection.rtl,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('-200',style: TextStyle(fontSize: 18.sp,color: YGColors.color333333),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                  ),
              ),
              Container(
                height: 75.w,
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color:YGColors.colorD5DCFE,width: 0.5.w )
                  )
                ),
                child:
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                      <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('送礼金',style: TextStyle(fontSize: 15.sp,color: YGColors.color333333),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(2.w)),
                                Row(
                                  children: [
                                    Text('2021-06-15',style: TextStyle(fontSize: 12.sp,color: YGColors.color666666),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection:TextDirection.rtl,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('-200',style: TextStyle(fontSize: 18.sp,color: YGColors.color333333),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                  ),
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
