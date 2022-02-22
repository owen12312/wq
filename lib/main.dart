/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-04 21:26:22
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-04 21:48:18
 * @FilePath: \yu_gou_app\lib\main.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/routes/app_pages.dart';
import 'package:yu_gou_app/pages/index.dart';
void main() async{
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: Colors.white,
        platform: TargetPlatform.iOS,
      ),
      getPages: AppPages.pages,
      home: const Index(),
    );
  }
}

