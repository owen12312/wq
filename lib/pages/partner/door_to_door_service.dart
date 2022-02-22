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
class DoorToDoorService extends StatefulWidget {
  _DoorToDoorServiceState createState() => _DoorToDoorServiceState();
}

class _DoorToDoorServiceState extends State<DoorToDoorService> {
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
          '爱帝宫月嫂上门服务',
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
      body: Container(
        child: 
          ListView(
            children: <Widget>[
            ListWidget(
              onTap: () {
                Get.back();
              },
              isShowTopBorder:false,
              isShowBottomBorder:true,
              leftTitle: Text(
                "出资记录",
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ), 
              rightTitle:const Text(""),
              listHeight: 20,
              islistHeight:false,
              rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
              iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
              isShowRightArrow:true,
              importance:false,
              iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
            ),
            ListWidget(
              onTap: () {
                Get.back();
              },
              isShowTopBorder:false,
              isShowBottomBorder:true,
              leftTitle: Text(
                "项目本金支出记录",
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ), 
              rightTitle:const Text(""),
              listHeight: 20,
              islistHeight:false,
              rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
              iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
              isShowRightArrow:true,
              importance:false,
              iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
            ),
            // ListWidget(
            //   onTap: () {
            //     // Get.back();
            //   },
            //   isShowTopBorder:false,
            //   leftTitle: Text(
            //     "出资记录",
            //     style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            //   ), 
            // ),
            // ListWidget(
            //   onTap: () {
            //     // Get.back();
            //   },
            //   isShowTopBorder:false,
            //   isShowBottomBorder: false,
            //   leftTitle: Text(
            //     "项目本金支出记录",
            //     style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            //   ), 
            // ),
            Container(
              height: 20.w,
              decoration:  BoxDecoration(
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
                        '爱帝宫月嫂上面服务005期',
                        style: TextStyle(
                          color: YGColors.color666666,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '预售期',
                        style: TextStyle(
                          color: YGColors.color666666,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
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
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '已分红：100000',
                                style: TextStyle(
                                  color: YGColors.colorE60012,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                        '预售期',
                        style: TextStyle(
                          color: YGColors.color666666,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
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
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '未分红',
                                style: TextStyle(
                                  color: YGColors.color666666,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration:  const BoxDecoration(
              color: Colors.white,
                // border: Border(
                //   bottom: BorderSide(color:YGColors.color220,width: 0.5.w )
                // )
              )
            ),
          ],
          )
        ,
        decoration:  BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color:YGColors.color220,width: 0.5.w )
          )
        )
      ) 
    );
  }
  
}
