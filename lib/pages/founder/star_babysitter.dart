import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:yu_gou_app/components/Card/index.dart';
class Starbabysitter extends StatelessWidget {
  const Starbabysitter({Key ? key}) : super(key: key);
  Widget buildText(item) {
    return Padding(
        padding: EdgeInsets.only(right: 10.w,left: 10.w),
        child:Text(item,
          style: TextStyle(
            color: YGColors.color210,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  }
  Widget buildDividingLine() {
    //垂直分割线
    return           
      SizedBox(
        width: 1,
        height: 12,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.grey),
        ),
      );
  }
  
  Widget buildGrid() {
      List formList = [
          {        
            'imgSrc':'Icons.alarm',
            'name': '张小彭',
            'six':'男',
            'age':'20',
            'education':'大专',
            'city':'深圳',
            'star':'五星月嫂',
          },
          {        
            'imgSrc':'Icons.alarm',
            'name': '张小彭',
            'six':'男',
            'age':'20',
            'education':'大专',
            'city':'深圳',
            'star':'五星月嫂',
          },
      ];
      List<Widget> tiles = [];
      Widget content;
      for(var item in formList) {
          tiles.add(
            new MyCardWidget(
              cardContainer: Container(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child:SizedBox(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 102.w,
                          width: 100.w,
                          child: Row(
                            children: [
                              Container(
                                width: 72.w,
                                height: 72.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(36),
                                  image: DecorationImage(
                                    image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
                                  )
                                )
                              )                  
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 102.w,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top:15.w),
                                child: Row(
                                  children: [
                                    Text(item['name'],
                                      style: TextStyle(
                                        color: YGColors.color51,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:8.w,bottom: 8.w),
                                  child:Row(
                                    children: [
                                      buildText(item['six']),
                                      buildDividingLine(),
                                      buildText(item['age']),
                                      buildDividingLine(),
                                      buildText(item['education']),
                                      buildDividingLine(),
                                      buildText(item['city']),
                                    ],
                                ),
                              ),
                              Row(
                                children: [
                                    Text(item['star'],
                                      style: TextStyle(
                                        color: YGColors.color51,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              height: 102.w, 
              onTap: () {  },
            ),
          );
          tiles.add(
            new Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            )
          );
      }
      content = new Column(
          children: tiles
      );
      return content;
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
          "三星月嫂",
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
        elevation: 0, //去掉Appbar底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body: Container(
        child: 
        ListView(
          // padding: const EdgeInsets.all(8),
          children: <Widget>[
            MyCardWidget(
              cardContainer: Container(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    Text(
                      '当前空缺：9人',
                      style: TextStyle(
                        color: YGColors.color51,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top:BorderSide(width:1,color:YGColors.color210)
                  )
                ),
              ),
              height: 44.w, 
              onTap: () {  },
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            buildGrid(),
          ],
        ),
        decoration: new BoxDecoration(
          color: YGColors.color244,
        )
      ),
    );
  }
}