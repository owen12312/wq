import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yu_gou_app/components/List/index.dart';
import 'package:yu_gou_app/components/SubmitDiv/index.dart';
import 'dart:ui';
class CooperationDetails extends StatelessWidget {
  const CooperationDetails({
    Key ? key,
  }) : super(key: key);
  // 返回
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "合作详情",
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
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15.w,right: 15.w),
            height: 200.w,
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
                        color: YGColors.color333333,
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
                        color: YGColors.color333333,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
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
                      '本期项目出资',
                      style: TextStyle(
                        color: YGColors.color333333,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: 
                      Text(
                        '100000',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '本项目总出资',
                      style: TextStyle(
                        color: YGColors.color333333,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: 
                      Text(
                        '200000',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '本期分红比例',
                      style: TextStyle(
                        color: YGColors.color333333,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: 
                      Text(
                        '5%',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    )
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
              print("跳转到项目详情");
              Get.back();
            },
            isShowTopBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "项目详情",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            islistHeight:false,
            isShowBottomBorder:false,
            rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
            rightTitle:const Text(''),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            isShowRightArrow:true,
            importance:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
          ),
          ListWidget(
            onTap: () {
              print("跳转到分红协议");
              Get.back();
            },
            isShowTopBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "分红协议",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            islistHeight:false,
            isShowBottomBorder:false,
            rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
            rightTitle:const Text(''),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            isShowRightArrow:true,
            importance:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
          ),
          ListWidget(
            onTap: () {
              print("跳转到追加出资页面");
              Get.back();
            },
            isShowTopBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "追加出资",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            islistHeight:false,
            isShowBottomBorder:false,
            rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
            rightTitle:const Text(''),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            isShowRightArrow:true,
            importance:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
          ),
        ],
      )
    );
  }
}