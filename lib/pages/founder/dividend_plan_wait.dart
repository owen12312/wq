import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:yu_gou_app/components/Card/index.dart';

class DividendPlanWait extends StatefulWidget {
  const DividendPlanWait({Key? key}) : super(key: key);
  @override
  _DividendPlanWaitState createState() => _DividendPlanWaitState();
}
class _DividendPlanWaitState extends State<DividendPlanWait> {
  Widget buildText(item) {
    return Padding(
        padding: EdgeInsets.all(10.w),
        child:Text(item,
          style: TextStyle(
            color: YGColors.color51,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  }
  
  Widget createTable() {
    List<TableRow> rows = [];
    // // 添加头部
    // rows.add(
    //   TableRow(
    //     children :[
          
    //       TableCell(
    //         child:Center(child: buildText('姓名')), 
    //       ),
    //       TableCell(
    //         child:Center(child: buildText('职位')), 
    //       ),
    //       TableCell(
    //         child:Center(child: buildText('股份')),
    //       ),
    //       TableCell(
    //         child:Center(child: buildText('分红')),
    //       ),
    //     ],
    //     decoration: BoxDecoration(
    //       border: Border(
    //         top:BorderSide(width:1,color:YGColors.color244)
    //       )
    //     ),
    //   ),
    // );

    for (int i = 0; i < 2; ++i) {
      rows.add(
        TableRow(
          children :[
            TableCell(
              child:Center(child: buildText('张三')),
            ),
            TableCell(
              child:Center(child: buildText('创始人')),
            ),
            TableCell(
              child:Center(child: buildText('股份')),
            ),
            TableCell(
              child:Center(child: buildText('分红')),
            ),
          ],
          decoration: BoxDecoration(
            border: Border(
              top:BorderSide(width:1,color:YGColors.color244)
            )
          ),
        ),
      );
    }
    return Table(children: rows,defaultVerticalAlignment :TableCellVerticalAlignment.middle,);
  }
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    @override
    void initState() {
      super.initState();
      _myDataColumnList();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "分红方案等待期",
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
        // actions:<Widget>[
        //   IconButton(
        //     icon: ImageIcon(AssetImage("doubt.png")),
        //     onPressed: () {_goBack();},
        //     color: YGColors.color51,
        //   ),
        // ],
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
              child: _myDataTable(),
            ),
            // Container(
            //   height: 50.w,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       GestureDetector(
            //         onTap: () => {addEditRow()} ,
            //         child:Text(
            //           '继续添加',
            //           style: TextStyle(
            //             color: YGColors.color51,
            //             fontSize: 15.sp,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),

            //     ],
            //   ),
            //   decoration: new BoxDecoration(
            //     color: YGColors.color244,
            //   )
            // ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
        )
      ),
    );
  }
}
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
  DividendPlanBean(
    this.name,
    this.positionName,
    this.shares,
     {
    this.isSelected = false,
  });
}

var _typeList = [
  const TypeBean(name: '姓名'),
  const TypeBean(name: '职位'),
  const TypeBean(name: '股份'),
];

List<DataColumn> _dataColumnList = [];

var _dividendPlanPresaleList = [
  DividendPlanBean('张三', '创始人','35%'),
  DividendPlanBean('张三', '创始人','35%'),
  DividendPlanBean('张三', '创始人','35%'),
  DividendPlanBean('张三', '创始人','35%'),
];
List<DataRow> _dataRowList = [];

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
    return DataColumn(
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
      IconButton(
        icon: const ImageIcon(AssetImage("shut_down.png")),
        onPressed: () {_deleteDataCell();},
        color: YGColors.color51,
      ),
  );
}
_myDataRow(DividendPlanBean bean) {
  return DataRow(
    cells: [
      _myDataCell(bean.name),
      _myDataCell(bean.positionName),
      _myDataCell(bean.shares),
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
  // setState() {
  //   _data.remove(_data[id]);
  // }
  print('11');
}