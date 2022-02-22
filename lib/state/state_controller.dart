/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-03-06 10:21:02
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-04 21:41:57
 * @FilePath: \yu_gou_app\lib\state\state_controller.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:yu_gou_app/routes/app_pages.dart';

class StateController extends GetxController {
  // 角色：0会员，1合伙人，2创始人
  int role = 0;
  // 合伙人类型：1资源；2出资；3技术
  int partnerType = 3;
  // 合伙人角色下首页是项目or创始人
  late int partnerHome = 0;
  // tabbar下标
  int currentIndex = 0;
  // tabbar
  List navigations = [
    {"index": 0, "name": "首页", "focus": 1},
    {"index": 1, "name": "合伙人", "focus": 0},
    {"index": 2, "name": "创始人", "focus": 0}
  ];
  // tabbar是否打开
  bool tabbarIsOpen = false;
  // pageView Controller
  PageController statePageController =
      PageController(initialPage: 0, keepPage: true);

  // 设置角色
  setRole(int value) {
    role = value;
    update();
  }

  // 切换类型
  setPartnerHome(int value) {
    partnerHome = value;
    update();
  }

  // 打开或关闭tabbar
  openOrCloseTabbar(bool value) {
    tabbarIsOpen = value;
    update();
  }
}
