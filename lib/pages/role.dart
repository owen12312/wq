// ignore_for_file: deprecated_member_use

/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-04 21:35:26
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-04 21:35:39
 * @FilePath: \yu_gou_app\lib\pages\role.dart
 */
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart'; // ios风格
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/routes/app_pages.dart';
import 'package:yu_gou_app/state/state_controller.dart';

// 角色选择
class RolePage extends StatefulWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  _RolePageState createState() => _RolePageState();
}

class _RolePageState extends State<RolePage> {
  final StateController stateController = Get.put(StateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.only(top: ScreenUtil().setWidth(100)),
          child: Center(
              child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  stateController.setRole(2);
                  goIndex();
                },
                child: const Text('创始人身份'),
              ),
              RaisedButton(
                onPressed: () {
                  stateController.setRole(1);
                  goIndex();
                },
                child: const Text('合伙人身份'),
              ),
              RaisedButton(
                onPressed: () {
                  stateController.setRole(0);
                  goIndex();
                },
                child: const Text('会员身份'),
              )
            ],
          ))),
    );
  }

  goIndex() {
    Get.offAllNamed(Routes.INDEXPAGE);
  }
}
