import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:yu_gou_app/components/Card/index.dart';
class TypeBean {
  const TypeBean({required this.name});
  final String name;
}
// 股份输入
class SharesBean {
  SharesBean({required this.name});
  double name;
}
class DividendPlanBean {
  // 姓名 职位 股份
  String name;
  String positionName;
  String shares;
  bool isSelected;
  bool isAddAready;
  DividendPlanBean(
    this.name,
    this.positionName,
    this.shares,
     {
    this.isSelected = false,
    required this.isAddAready,
  });
}
class DividendPlanPresale extends StatefulWidget {
  const DividendPlanPresale({Key? key}) : super(key: key);
  @override
  _DividendPlanPresaleState createState() => _DividendPlanPresaleState();
}

class MyDataTable{
    final _typeList = [
      const TypeBean(name: '姓名'),
      const TypeBean(name: '职位'),
      const TypeBean(name: '股份'),
      const TypeBean(name: ''),
    ];
    final List<DataRow> _dataRowList = [];
    final List<DataColumn> _dataColumnList = [];

    final _dividendPlanPresaleList = [
      DividendPlanBean('张三', '创始人','35',isAddAready: true ),
      DividendPlanBean('张三', '创始人','35',isAddAready: true ),
      
    ];
    _myDataTable() {
        return DataTable(
          columns: _myDataColumnList(),
          rows: _myDataRowList(),
          dataRowHeight: 60,
          headingRowHeight: 44,
          decoration: null,
        );
      }

    _myDataColumn(TypeBean bean) {
        return  DataColumn(
          label: Text(
            bean.name,
            style: TextStyle(
              fontSize: 15.w,
              color:YGColors.color666666,
            ),
          ),
          tooltip: bean.name,
          numeric: false,
        );
      }
    // _myDeleteColumn() {
    //     DataColumn(
    //       label: ConstrainedBox(
    //         constraints: const BoxConstraints(
    //           maxWidth: 20,
    //           minWidth: 20,
    //         ),
    //         child: const Text(''),
    //       ),
    //     );
    // }
    _myDataColumnList() {
        if (_dataColumnList.isNotEmpty) {
          _dataColumnList.clear();
        }
        for (var element in _typeList) {
          _dataColumnList.add(_myDataColumn(element));
        }
        return _dataColumnList;
      }

    _myDataCell(String s) {
      return DataCell(
        Text(s),
      );
    }
    // 输入框
    _myDataCellInput(String shares) {
      final TextEditingController _inputController = TextEditingController();
      return DataCell(
          TextField(
            controller: _inputController,
            keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none), //去除下边框
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0),
          ))
      );
    }
    // 删除行按钮
    _myDataCellClearBtn(String s) {
      return DataCell(
          SizedBox(
            child:
            IconButton(
              icon: const ImageIcon(AssetImage("shut_down.png")),
              onPressed: () {
              },
              color: YGColors.color51,
            ),
            width:50.w
          )

      );
    }
    _myDataRow(DividendPlanBean bean) {
      return DataRow(
        cells: [
          _myDataCell(bean.name),
          _myDataCell(bean.positionName),
          _myDataCellInput(bean.shares),
          _myDataCellClearBtn(bean.name),
        ],
      );
    }
    _myDataRowList() {
      if (_dataRowList.isNotEmpty) {
        _dataRowList.clear();
      }
      for (var element in _dividendPlanPresaleList) {
        _dataRowList.add(_myDataRow(element));
      }
      return _dataRowList;
    }
     _deleteDataCell(){
    }
    _addEditRow(){
      _dividendPlanPresaleList.add(DividendPlanBean('张三', '创始人','35',isAddAready: true));
    }
}

class _DividendPlanPresaleState extends State<DividendPlanPresale> {
  MyDataTable myDataTable = MyDataTable();
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    @override
    void initState() {
      super.initState();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "分红方案预售期",
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
            icon: const ImageIcon(AssetImage("doubt.png")),
            onPressed: () {_goBack();},
            color: YGColors.color51,
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
            MyCardWidget(
              cardContainer: Container(
                padding: const EdgeInsets.only(left: 15),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件的排列方式为主轴两端对齐
                  children: <Widget>[
                    Text(
                      '分红证明',
                      style: TextStyle(
                        color: YGColors.color51,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    IconButton(
                      icon: const ImageIcon(AssetImage("right_arrow.png")),
                      onPressed: () {_goBack();},
                      color: YGColors.color51,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top:BorderSide(width:0.5,color:YGColors.color244)
                  )
                ),
              ),
              height: 60.w, onTap: () {  },
            ),
            Container(
              height: 15.w,
              // ignore: unnecessary_new
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            SizedBox(
              width: double.infinity,
              child: myDataTable._myDataTable(),
            ),
            Padding(padding: EdgeInsets.only(top:10.w)),
            Container(
              height: 50.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => {
                      setState(() {
                        myDataTable._addEditRow();
                      })
                    } ,
                    child:Text(
                      '继续添加',
                      style: TextStyle(
                        color: YGColors.colorE60012,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              )
            ),
            GestureDetector(
              child:
                SizedBox(
                  height: 80.w,
                  child: Column(
                    children: [

                      SizedBox(
                        height: 80.w,
                        child: 
                          Padding(
                            padding: const EdgeInsets.only(right: 15,left: 15),
                            child:
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child:
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red,//change background color of button
                                      onPrimary: Colors.red,//change text color of button
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(41),
                                      ),
                                      elevation: 15.0,
                                      textStyle:TextStyle(fontSize: 15.w, color: Colors.white)
                                    ),
                                    child:Text(
                                        "提交",
                                        style: TextStyle(fontSize:15.w, color: Colors.white),
                                      )
                                  ),
                                  
                                  
                                  //   ElevatedButton(
                                  //   style: 
                                  //   ButtonStyle(
                                  //     backgroundColor: MaterialStateProperty.all(Colors.red),
                                  //     padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                                  //     textStyle: MaterialStateProperty.all(
                                  //         TextStyle(fontSize: 15, color: Colors.white)
                                  //     ),
                                  //     foregroundColor: MaterialStateProperty.all(Colors.white),
                                  //   ),
                                  //   // ElevatedButton.styleFrom(textStyle: 
                                  //   // const TextStyle(fontSize: 14,color:Colors.red,height:40)),
                                  //   child: 

                                  //   onPressed: () {
                                  //     if((_formKey.currentState as FormState).validate()){
                                  //       //验证通过提交数据
                                  //     }
                                  //   },
                                  // ),
                                ),
                              ],
                            )
        
                          )
                        ,
                      )
                    ],
                  ),
                ),
                onTap: () => {},//点击
                onDoubleTap: () => {}, //双击
                onLongPress: () => {}, //长按
            )
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
        )
      ),
    );
  }
}