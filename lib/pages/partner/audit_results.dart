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
import 'package:yu_gou_app/components/SubmitDiv/index.dart';
// import 'package:yu_gou_app/components/CameraController/index.dart';
// demo页面
class AuditResults extends StatefulWidget {
  _AuditResultsState createState() => _AuditResultsState();
}

class _AuditResultsState extends State<AuditResults> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    void _updateAuditResults() {
      Get.back();
    }
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "审核结果",
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
            icon: ImageIcon(AssetImage("doubt.png"),size: 22.w,),
            onPressed: () {_goBack();},
            color: YGColors.color51,
          ),
        ],
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body:Container(
        child: 
          ListView(
            children: <Widget>[
              Container(
                height: 70.w,
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color:YGColors.color220,width: 0.5.w )
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          '审核未通过',
                          style: TextStyle(
                            color: YGColors.colorE60012,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '原因：合同少了两页，请重新上传',
                          style: TextStyle(
                            color: YGColors.colorE60012,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
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
                height: 350.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '客户名称：',
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
                            '拦服加真股份有限公司',
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
                          '公司税号：',
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
                            '2310310310001',
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
                          '合同金额：',
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
                          '折扣：',
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
                            '8.5折',
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
                          '合同编号：',
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
                            '231232142141241',
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
                          '客户地址：',
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
                            '成都市高新区益州大道150号',
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
                          '合同签字人：',
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
                            '小明',
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
                          '签字人手机号：',
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
                            '131231231312',
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
                          '签字人邮箱：',
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
                            '2472847328942@qq.com',
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
                decoration: new BoxDecoration(
                color: Colors.white,
                  // border: Border(
                  //   top: BorderSide(color:YGColors.color220,width: 0.5.w )
                  // )
                )
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '合同图片',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Container(
                      width: 65.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
                        )
                      )
                    ) 
                  ),
                  Expanded(
                    flex: 1,
                    child:Container(
                      width: 65.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
                        )
                      )
                    ) 
                  ),
                  Expanded(
                    flex: 1,
                    child:Container(
                      width: 65.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
                        )
                      )
                    ) 
                  ),
                  Expanded(
                    flex: 1,
                    child:Container(
                      width: 65.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
                        )
                      )
                    ) 
                  ),
                ],
              ),
              Container(
                height: 20.w,
                decoration: new BoxDecoration(
                  color: YGColors.color244,
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 15.w,left: 15.w,right: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '添加合同图片',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 2.w,right: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ImagePickerPage(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.zero,
                          child: 
                            Image(
                                image: NetworkImage("https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg"),
                                width: 50.w,
                                height: 70.w,
                            ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: 
                            Image(
                                image: NetworkImage("https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg"),
                                width: 50.w,
                                height: 70.w,
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.w,bottom: 20.w),
                child:
                  SubmitDivWidget(
                    title:Text('提交',style: TextStyle(color: Colors.white),),
                    onTap:()=>{
                      _updateAuditResults()
                    }
                  )
              )


            ],
          ),
        decoration: new BoxDecoration(
          color: Colors.white,
        )
      )
    );
  }
  
}
