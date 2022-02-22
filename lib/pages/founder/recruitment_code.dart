import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:yu_gou_app/components/Card/index.dart';
import 'package:city_pickers/city_pickers.dart';

class RecruitmentCode extends StatefulWidget {
  const RecruitmentCode({Key ?key}) : super(key: key);

  @override
  _RecruitmentCode createState() => _RecruitmentCode();
}

class _RecruitmentCode extends State<RecruitmentCode> {
  @override
  void initState() {
    super.initState();
  }
  Result resultArr = new Result();
  void _clickEventFunc() async{
    // Result tempResult = await CityPickers.showCityPicker(
    //   context: context??,
    //   theme: Theme.of(context).copyWith(primaryColor: Color(0xfffe1314)), // 设置主题
    //   locationCode: resultArr != null ? resultArr.areaId ?? resultArr.cityId ?? resultArr.provinceId : null, // 初始化地址信息
    //   height: 220.0
    // );
    // if(tempResult != null){
    //   setState(() {
    //     resultArr = tempResult;
    //   });
    // }
  }
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    void addEditRow () {
      log('1111');
    }
    // @override
    // void initState() {
    //   _firstChildList = widget.DividendPlanPresale.children;
    //   super.initState();
      
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "招募码",
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
        actions:<Widget>[
          IconButton(
            icon: ImageIcon(AssetImage("location.png")),
            onPressed: () {_clickEventFunc();},
            color: YGColors.color51,
          ),
          TextButton(
            onPressed: () {},
            child: 
            Text(
              '深圳',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: YGColors.color51,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            )
          )
        ],
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: Container(
        child: 
        ListView(
          // padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child:
                     SizedBox(
                      height: 156.w,
                      child:Card(
                          // Change this 
                        shadowColor: YGColors.shadowColor025,
                        child: Flex(
                          direction: Axis.vertical,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child:
                                            Text(
                                              '手机：',
                                              style: TextStyle(
                                                color: YGColors.color51,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: 
                                            Text(
                                              '15298182890',
                                              style: TextStyle(
                                                color: YGColors.color51,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                          ),
                                        )
                                      ],
                                    ),
                                ),
                                IconButton(
                                  icon: ImageIcon(AssetImage("shut_down.png")),
                                  onPressed: () {_clickEventFunc();},
                                  color: YGColors.color51,
                                ),
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: 
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:
                                          Text(
                                            '身份证号：',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: 
                                          Text(
                                            '15298182890',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:
                                          Text(
                                            '姓名：',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: 
                                          Text(
                                            '任逍遥',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                    ),
                     ),
                  ),
                  Center(
                    child:
                     SizedBox(
                      height: 156.w,
                      child:Card(
                          // Change this 
                        shadowColor: YGColors.shadowColor025,
                        child: Flex(
                          direction: Axis.vertical,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child:
                                            Text(
                                              '手机：',
                                              style: TextStyle(
                                                color: YGColors.color51,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: 
                                            Text(
                                              '15298182890',
                                              style: TextStyle(
                                                color: YGColors.color51,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                          ),
                                        )
                                      ],
                                    ),
                                ),
                                IconButton(
                                  icon: ImageIcon(AssetImage("shut_down.png")),
                                  onPressed: () {_clickEventFunc();},
                                  color: YGColors.color51,
                                ),
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: 
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:
                                          Text(
                                            '身份证号：',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: 
                                          Text(
                                            '15298182890',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:
                                          Text(
                                            '姓名：',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: 
                                          Text(
                                            '任逍遥',
                                            style: TextStyle(
                                              color: YGColors.color51,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                    ),
                     ),
                  ),         
                ],
              ),
            ),
          ],
        ),
        // decoration: new BoxDecoration(
        //   color: Colors.white,
        // )
      ),
    );
  }
}