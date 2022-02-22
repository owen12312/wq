/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-04 21:33:25
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-04 21:35:46
 * @FilePath: \yu_gou_app\lib\pages\index.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yu_gou_app/pages/role.dart';
// ignore: unused_import
import 'dart:developer' as developer;
class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  // NewsPageListResponseEntity _contractList;
  @override
  void initState() {
    // _loadAllData();
    _handleSignIn();
    super.initState();
  }
  // 执行登录操作
  _handleSignIn() async {
    // if (!duIsEmail(_emailController.value.text)) {
    //   toastInfo(msg: '请正确输入邮件');
    //   return;
    // }
    // if (!duCheckStringLength(_passController.value.text, 6)) {
    //   toastInfo(msg: '密码不能小于6位');
    //   return;
    // }

  }
  @override
  Widget build(BuildContext context) {
    // void _getContext(int x ) {
    //   bool y = !(x > 0);
    // }
    return LayoutBuilder(
      builder: (context, constraints) {
        //设置适配尺寸 (填入设计稿中设备的屏幕尺寸) 此处假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
        ScreenUtil.init(
            BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: MediaQuery.of(context).size.height
            ),
            designSize: const Size(360, 667),
            // orientation: Orientation.portrait,
            );
        return const RolePage();
      },
    );
  }
}

