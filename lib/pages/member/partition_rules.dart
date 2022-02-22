
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartitionRules extends StatelessWidget {
  const PartitionRules({Key? key}) : super(key: key);
  Widget buildText(item) {
    return Padding(
        padding: EdgeInsets.all(10.w),
        child:Text(item,
          style: TextStyle(
            color: YGColors.color333333,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  }
  Widget buildTitleText(item) {
    return Padding(
        padding: EdgeInsets.all(10.w),
        child:Text(item,
          style: TextStyle(
            color: YGColors.color333333,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "分成规则",
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
        //     icon: ImageIcon(AssetImage("doubt.png")),
        //     onPressed: () {_goBack();},
        //     color: YGColors.color51,
        //   ),
        // ],
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: Container(
        child: 
        ListView(
          // padding: const EdgeInsets.all(8),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100,top: 25,bottom: 25),
              child: Image.asset('divided_into.png', fit: BoxFit.contain),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:buildTitleText('销售实付金额'), 
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: 
              Container(
                child:buildText('内容内容v内容  使用月嫂 使用月嫂一次扣500元'), 
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:buildTitleText('使用月嫂'), 
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: 
              Container(
                child:buildText('使用月嫂 使用月嫂一次扣500元'), 
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:buildTitleText('创始人'), 
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: 
              Container(
                child:buildText('销售---单量---分成5%~10%'), 
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:buildTitleText('合伙人'), 
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: 
              Container(
                child:buildText('上岗——职业资质——每位分成：800元'), 
              ),
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
    );
  }
}