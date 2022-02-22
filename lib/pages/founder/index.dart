
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

// import 'package:get/get.dart';
// import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:yu_gou_app/components/Header/index.dart';
// demo页面
class FounderIndex extends StatefulWidget {
  _FounderIndexState createState() => _FounderIndexState();
}

class _FounderIndexState extends State<FounderIndex> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center, //卡片内文字居中
        child:Column(children: <Widget>[
            Header(
              title: '本金认证', 
              actionList: [], 
              // leading: null,
            )
        ],)
    );
  }
}
