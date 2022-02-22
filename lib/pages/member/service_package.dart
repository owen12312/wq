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
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
// demo页面
class ServicePackage extends StatefulWidget {
  _ServicePackageState createState() => _ServicePackageState();
}

class _ServicePackageState extends State<ServicePackage> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  HDTRefreshController _hdtRefreshController = HDTRefreshController();

  static const int sortName = 0;
  static const int sortStatus = 1;
  bool isAscending = true;
  int sortType = sortName;

  @override
  void initState() {
    user.initData(50);
    super.initState();
  }
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
          "产品服务套餐",
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
      body: Container(
        child: HorizontalDataTable(
          leftHandSideColumnWidth: 180,
          rightHandSideColumnWidth: 300,
          isFixedHeader: true,
          headerWidgets: _getTitleWidget(),
          leftSideItemBuilder: _generateFirstColumnRow,
          rightSideItemBuilder: _generateRightHandSideColumnRow,
          itemCount: user.userInfo.length,
          rowSeparatorWidget: const Divider(
            color: Color(0xFFF6F6F6),
            height: 1.0,
            thickness: 0.0,
          ),
          leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
          rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
          verticalScrollbarStyle: const ScrollbarStyle(
            isAlwaysShown: false,
            thickness: 4.0,
            radius: Radius.circular(5.0),
          ),
          horizontalScrollbarStyle: const ScrollbarStyle(
            isAlwaysShown: true,
            thickness: 4.0,
            radius: Radius.circular(5.0),
          ),
          enablePullToRefresh: true,
          refreshIndicator: const WaterDropHeader(),
          refreshIndicatorHeight: 60,
          onRefresh: () async {
            //Do sth
            await Future.delayed(const Duration(milliseconds: 500));
            _hdtRefreshController.refreshCompleted();
          },
          htdRefreshController: _hdtRefreshController,
        ),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 10.w),
      )
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('服务项目',180,false,true),
      _getTitleItemWidget('三星', 60,true,false),
      _getTitleItemWidget('四星', 60,true,false),
      _getTitleItemWidget('五星', 60,true,false),
      _getTitleItemWidget('六星', 60,true,false),
      _getTitleItemWidget('七星', 60,true,false),
    ];
  }

  Widget _getTitleItemWidget(String label, double width,bool isAlignCenter, bool isFirstColumn) {
    return Container(
      child: Text(label, style: TextStyle(fontWeight: FontWeight.bold,color:isFirstColumn? YGColors.color333333 : Colors.white )),
      width: width,
      height: 45.w,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: isAlignCenter? Alignment.center : Alignment.centerLeft,
      decoration:new BoxDecoration(
        color: isFirstColumn? YGColors.colorF7F7F7 : YGColors.colorE60012,
        border:  Border(
          right: BorderSide(color:Colors.white,width: 0.5.w )
        )
      ),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      child: Text(user.userInfo[index].name,style: TextStyle(
        fontSize: 12.w,
        fontWeight: FontWeight.w400,
        color: YGColors.color333333
      ),),
      width: 70.w,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      decoration:new BoxDecoration(
        color: YGColors.colorF7F7F7,
      ),
      alignment: Alignment.centerLeft ,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              user.userInfo[index].threeStatus
                  ? ImageIcon(AssetImage("correct.png"),size: 22.w,color: YGColors.colorE60012)
                  : ImageIcon(AssetImage("mistake.png"),size: 22.w,color: YGColors.colorE60012),
            ],
          ),
          width: 60,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              user.userInfo[index].threeStatus
                  ? ImageIcon(AssetImage("correct.png"),size: 22.w,color: YGColors.colorE60012)
                  : ImageIcon(AssetImage("mistake.png"),size: 22.w,color: YGColors.colorE60012),
            ],
          ),
          width: 60,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              user.userInfo[index].threeStatus
                  ? ImageIcon(AssetImage("correct.png"),size: 22.w,color: YGColors.colorE60012)
                  : ImageIcon(AssetImage("mistake.png"),size: 22.w,color: YGColors.colorE60012),
            ],
          ),
          width: 60,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              user.userInfo[index].sixStatus
                  ? ImageIcon(AssetImage("correct.png"),size: 22.w,color: YGColors.colorE60012)
                  : ImageIcon(AssetImage("mistake.png"),size: 22.w,color: YGColors.colorE60012),
            ],
          ),
          width: 60,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              user.userInfo[index].sevenStatus
                  ? ImageIcon(AssetImage("correct.png"),size: 22.w,color: YGColors.colorE60012)
                  : ImageIcon(AssetImage("mistake.png"),size: 22.w,color: YGColors.colorE60012),
            ],
          ),
          width: 60,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
        ),
      ],
    );
  }
}



User user = User();

class User {
  List<UserInfo> userInfo = [];
  void initData(int size) {
    for (int i = 1; i <= size; i++) {
      userInfo.add(UserInfo(
          "$i、剖宫产/顺产伤口清洗和消毒", i % 3 == 0, i % 3 == 0, i % 3 == 0,i % 3 == 0, i % 3 == 0,));
    }
      // userInfo.add(UserInfo(
      //     "价格", '9800', '15800', '22800','39800', '999800',));
  }
}

class UserInfo {
  String name;
  var threeStatus;
  var fourStatus;
  var fiveStatus;
  var sixStatus;
  var sevenStatus;
  UserInfo(this.name, this.threeStatus, this.fourStatus, this.fiveStatus,this.sixStatus,this.sevenStatus);
}

