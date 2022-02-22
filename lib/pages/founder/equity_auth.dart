import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yu_gou_app/components/SubmitDiv/index.dart';
import 'package:yu_gou_app/components/List/index.dart';
class EquityAuth extends StatefulWidget {
  _EquityAuthState createState() => _EquityAuthState();
}
class _EquityAuthState extends State<EquityAuth> {
  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Get.back();
    }
    // 跳转到认证流程
    void _goCertificationProcess() {
      Get.back();
    }
    // // 跳转到出资协议
    // void _goInvestmentAgreement() {
    //   Get.back();
    // }
    void _downLoadEquityTransfer() {
      Get.back();
    }
    // Map  details = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "股权认证",
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
        actions:[
          TextButton(
            onPressed: () {_goCertificationProcess();},
            child: Text(
              '认证流程',
              style: TextStyle(color: YGColors.color51, fontSize: 15),
            ),
            style: TextButton.styleFrom(primary: YGColors.color51, padding:const EdgeInsets.only(right: 20)),
          ),
        ],
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: ListView(
        children: <Widget>[
          ListWidget(
            onTap: () {
              print("跳转到出资协议");
              Get.back();
            },
            isShowTopBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "出资协议",
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
              print("出资凭证");
              Navigator.pushNamed(context, "/");
            },
            isShowTopBorder:false,
            isShowBottomBorder:false,
            listHeight: 20,
            leftTitle: Text(
              "出资凭证",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ),
            islistHeight:false,
            rightWidget: const Padding(padding:EdgeInsets.only(left: 0)),
            rightTitle:const Text(''),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            isShowRightArrow:true,
            importance:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
          ),
          ListWidget(
            onTap: () {
              // ignore: avoid_print
              print("股权转让协议模板");
            },
            isShowTopBorder:false,
            isShowBottomBorder:false,
            isShowRightArrow: true,
            rightWidget: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed:()=>{
                _downLoadEquityTransfer()
              },
              child:Text(
                '下载',
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ),
            ),
            listHeight: 20,
            leftTitle: Text(
              "股权转让协议模板",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ), 
            rightTitle:const Text(''),
            iconRight:const Padding(padding:EdgeInsets.only(left: 0)),
            islistHeight:false,
            iconLeft:const Padding(padding:EdgeInsets.only(left: 0)),
            importance:false,
          ),
          Container(
            height: 15.w,
            decoration: new BoxDecoration(
              color: YGColors.color244,
            )
          ),
          ListWidget(
            onTap: () {
              print("股权转让协议");
              Get.back();
            },
            importance:true,
            isShowTopBorder:false,
            isShowBottomBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "股权转让协议",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ), 
            rightTitle:Padding(
              padding: EdgeInsets.only(right:0),
              child:
                Text(
                  "已上传",
                  style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
                ),      
            ),
            isShowRightArrow: true,
            iconRight:Padding(padding:EdgeInsets.only(left: 0)),
            islistHeight:false,
            iconLeft:Padding(padding:EdgeInsets.only(left: 0)),
            rightWidget: Padding(padding:EdgeInsets.only(left: 0)),
          ),
          ListWidget(
            onTap: () {
              print("股东会决议");
              Navigator.pushNamed(context, "/");
            },
            importance:true,
            isShowTopBorder:false,
            isShowBottomBorder:true,
            listHeight: 20,
            leftTitle: Text(
              "股权转让协议",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ), 
            rightTitle:Padding(
              padding: EdgeInsets.only(right:0),
              child:
                  Text(
                "已上传",
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ),    
            ),
            isShowRightArrow: true,
            iconRight:Padding(padding:EdgeInsets.only(left: 0)),
            islistHeight:false,
            iconLeft:Padding(padding:EdgeInsets.only(left: 0)),
            rightWidget: Padding(padding:EdgeInsets.only(left: 0)),
          ),
          ListWidget(
            onTap: () {
              print("变更通知");
              Get.back();
            },
            importance:true,
            isShowTopBorder:false,
            isShowBottomBorder:true,
            listHeight: 20,
            leftTitle:Text(
              "变更通知",
              style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
            ), 
            rightTitle:Padding(
              padding: EdgeInsets.only(right:0),
              child:
                Text(
                "未上传",
                style: TextStyle(color: YGColors.color214, fontSize: 15.sp),
              ),   
            ),
            isShowRightArrow: true,
            iconRight:Padding(padding:EdgeInsets.only(right: 0)),
            islistHeight:false,
            iconLeft:Padding(padding:EdgeInsets.only(left: 0)),
            rightWidget: Padding(padding:EdgeInsets.only(left: 0)),
          ),
          Container(
            height: 100.w,
            decoration: new BoxDecoration(
              color: YGColors.color244,
            )
          ),
          SubmitDivWidget(
            title:Text('提交',style: TextStyle(color: Colors.white),),
            onTap:()=>{
              _downLoadEquityTransfer()
            }
          )
        ],
      )
    );
  }
}