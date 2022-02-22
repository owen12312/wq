import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:yu_gou_app/components/Card/index.dart';
import 'package:city_pickers/city_pickers.dart';

class RecruitmentQrCode extends StatefulWidget {
  const RecruitmentQrCode({Key ?key}) : super(key: key);

  @override
  _RecruitmentCode createState() => _RecruitmentCode();
}

class _RecruitmentCode extends State<RecruitmentQrCode> {
  @override
  void initState() {
    super.initState();
  }
  Result resultArr = new Result();
  // void _clickEventFunc() async{
  //   Result tempResult = await CityPickers.showCityPicker(
  //     context: context,
  //     theme: Theme.of(context).copyWith(primaryColor: Color(0xfffe1314)), // 设置主题
  //     locationCode: resultArr != null ? resultArr.areaId ?? resultArr.cityId ?? resultArr.provinceId : null, // 初始化地址信息
  //     height: 220.0
  //   );
  //   if(tempResult != null){
  //     setState(() {
  //       resultArr = tempResult;
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    // void addEditRow () {
    //   log('1111');
    // }
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
              icon: const ImageIcon(AssetImage("back_icon.png")),
              onPressed: () {_goBack();},
              color: YGColors.color51,
            );
          },
        ),
        actions:<Widget>[
          IconButton(
            icon: const ImageIcon(AssetImage("location.png")),
            onPressed: () {
              // _clickEventFunc();
            },
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
                    child:SizedBox(
                      height: 400.w,
                      child:Card(
                          // Change this 
                        shadowColor: YGColors.shadowColor025,
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(20.w)),
                            SizedBox(
                              height:40.w, 
                              child:
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '外挂HR招募专用码',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: YGColors.color102,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.w
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height:20.w, 
                              child:
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '预勾服务平台',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: YGColors.color102,
                                        fontSize: 12.sp
                                      ),
                                    ),
                                  ],
                                )
                               ,
                            ),
                            Padding(padding: EdgeInsets.all(10.w)),
                            SizedBox(
                              height:140.w, 
                              child: 
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                 Image(image: AssetImage("yugou.png"))
                                ],
                              )
                            ,),
                        ],),
                    ),
                    )
                  )        
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5.w,color:YGColors.color220)
                  )
              ),
            ),
          ],
        ),
        decoration:  const BoxDecoration(
          color: Colors.white,
        )
      ),
    );
  }
}