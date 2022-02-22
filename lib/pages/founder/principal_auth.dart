import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PrincipalAuth extends StatelessWidget {
  const PrincipalAuth({Key? key}) : super(key: key);
  // 生成金额
  _buildMoneyRow(Map  val) {
    return 
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            val["money"].toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            )
          ),
        ],
      );
  }
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    Map<dynamic, dynamic> json = {
      "money": '500'
    };
    void _goBack() {
      Get.back();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "本金认证",
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
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child:                
                Center(
                  child:SizedBox(
                    height: 136.w,
                    child:Card(
                        // Change this 
                      shadowColor: YGColors.shadowColor025,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height:50.w, 
                            child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '您已完成创始人本金认证',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: YGColors.color102,
                                    fontSize: 12.sp
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:30.w, 
                            child:_buildMoneyRow(json)
                          ),
                          SizedBox(
                            height:20.w, 
                            child: 
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '认证金额',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: YGColors.color102,
                                    fontSize: 12.sp
                                  ),
                                ),
                              ],
                            )
                          ,),
                      ],),
                  ),
                  )
                ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3, //阴影范围
                    spreadRadius: 0, //阴影浓度
                    offset: const Offset(0, 3),
                    color:YGColors.color238, //阴影颜色
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}