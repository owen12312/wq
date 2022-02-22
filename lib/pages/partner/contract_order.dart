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

import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:yu_gou_app/components/Card/index.dart';
import 'package:yu_gou_app/components/SubmitDiv/index.dart';
// demo页面
class ContractOrder extends StatefulWidget {
  _ContractOrderState createState() => _ContractOrderState();
}

class _ContractOrderState extends State<ContractOrder> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  @override
  void initState() {
    super.initState();
  }
  Widget buildGrid() {
    // 跳转到项目详情
    // void _goProjectDetails() {
    //   print('跳转到项目详情');
    //   Get.back();
    // }    
    // 跳转到添加合同页面
    void _goAddContract() {
      print('跳转到添加合同页面');
      Get.back();
    }
    void _goViewResourcePartnershipAgreement() {
      print('跳转查看资源合伙协议');
      Get.back();
    }
    void _goContractProgress() {
      print('跳转合同进度');
      Get.back();
    }
    List formList = [
        {        
          'imgSrc':'Icons.alarm',
          'name': '张小彭',
          'six':'男',
          'age':'20',
          'education':'大专',
          'city':'深圳',
          'star':'五星月嫂',
          'state':'1',
        },
        {        
          'imgSrc':'Icons.alarm',
          'name': '张小彭',
          'six':'男',
          'age':'20',
          'education':'大专',
          'city':'深圳',
          'star':'五星月嫂',
          'state':'2',
        },
        {        
          'imgSrc':'Icons.alarm',
          'name': '张小彭',
          'six':'男',
          'age':'20',
          'education':'大专',
          'city':'深圳',
          'star':'五星月嫂',
          'state':'3',
        },
    ];
    List<Widget> tiles = [];
    Widget content;
    for(var item in formList) {
      tiles.add(
        new MyCardWidget(
          cardContainer: Container(
            padding: const EdgeInsets.only(left:15,right: 15,bottom: 15),
            child:Stack(
              children: <Widget>[
                SizedBox(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    child: Text(
                                      '拦服家政服务',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: YGColors.color333333,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      _goContractProgress();
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    icon: ImageIcon(AssetImage("right_arrow.png"),size: 18.w,),
                                    onPressed: () {_goContractProgress();},
                                    color: YGColors.color666666,
                                  ),    
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '项目评级',
                                    style: TextStyle(
                                      color: YGColors.color333333,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                                  ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                                  ImageIcon(AssetImage("star.png"),size: 18.w,color: YGColors.colorE60012,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '天虹商场龙岗分店',
                                    style: TextStyle(
                                      color: YGColors.color666666,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 3.w)),
                                  Text(
                                      '210000',
                                      style: TextStyle(
                                        color: YGColors.color666666,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '天虹商场龙岗分店',
                                    style: TextStyle(
                                      color: YGColors.color666666,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                            ],

                          )
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                    item['state']== '1'
                                    ? Text(
                                      '预售期',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: YGColors.color666666,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                    :Text(
                                      '服务期',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: YGColors.color666666,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '查看',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: YGColors.color333333,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextButton(
                                    child: Text(
                                      '《资源合伙协议》',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: YGColors.colorE60012,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      _goViewResourcePartnershipAgreement();
                                    },
                                    style: TextButton.styleFrom(
                                      primary: YGColors.colorE60012,
                                    ),
                                  ),
                                ],
                              ),
                              item['state']== '1'? 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-150000',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: YGColors.colorE60012,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ):
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end ,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 70.w,
                                    height: 25.w,
                                    child: 
                                    FlatButton(
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.w),
                                      side: BorderSide(color: YGColors.colorE60012,)),
                                      color: Colors.white,
                                      textColor: YGColors.colorE60012,
                                      padding: EdgeInsets.zero,
                                      onPressed: () {
                                        _goAddContract();
                                      },
                                      child:
                                      Text(
                                        '添加合同',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ) 
                                    ),
                                  )
                                ],
                              )
                            ],
                          ) ,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          onTap: ()=>{
            _goContractProgress()
          }, 
          height: 120.w,
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
  Widget build(BuildContext context ) {
    
    // Map  details = Get.arguments;
    // 跳转到合同进度  打开合同地区选择菜单
    void _seeContractOrder() {
      print(' 打开合同地区选择菜单');
      Get.back();
    }
    // 返回上一页
    void _goBack() {
      print('返回上一页');
      Get.back();
    }
    // 跳转到合同审核
    void _goContractReview() {
      print('跳转到合同审核');
      Get.back();
    }
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "合同订单",
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
          actions:[
            TextButton(
              onPressed: () {_seeContractOrder();},
              child: Text(
                '合同进度',
                style: TextStyle(color: YGColors.color51, fontSize: 15.sp),
              ),
              style: TextButton.styleFrom(primary: YGColors.color51, padding:EdgeInsets.only(right: 20)),
            ),
          ],
          elevation: 0, //去掉Appbar底部阴影
          backgroundColor: YGColors.colorFFFFFF,
        ),
        body: Container(
          child: 
          ListView(
            // padding: const EdgeInsets.all(8),
            children: <Widget>[
              // _buildOrderItem(_listItem),
              buildGrid(),
              SubmitDivWidget(
                title:Text('提交审核',style: TextStyle(color: Colors.white,fontSize:15.w),),
                onTap:()=>{
                  _goContractReview()
                }
              )
            ],
          ),
          decoration: new BoxDecoration(
            border: Border(
              top: BorderSide(color:YGColors.color220,width: 0.5.w )
            )
          )
        ),
      ),

    );
  }
}
