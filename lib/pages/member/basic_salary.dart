
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yu_gou_app/components/Card/index.dart';

class BasicSalary extends StatelessWidget {
  const BasicSalary({Key? key}) : super(key: key);
  Widget buildText(item) {
    return Padding(
        padding: EdgeInsets.all(10.w),
        child:Text(item,
          style: TextStyle(
            color: YGColors.color51,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  }
  Widget buildTitleText(item) {
    return Padding(
        padding: EdgeInsets.all(10.w),
        child:Text(item,
          style: TextStyle(
            color: YGColors.color51,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
  Widget createTable() {
    List<TableRow> rows = [];
    // 添加头部
    rows.add(
      TableRow(
        children :[
          TableCell(
            child:Center(child: buildTitleText('星级')),
          ),
          TableCell(
            child:Center(child: buildText('三星')),
          ),
          TableCell(
            child:Center(child: buildText('四星')),
          ),
          TableCell(
            child:Center(child: buildText('五星')),
          ),
          TableCell(
            child:Center(child: buildText('七星')),
          ),
        ],
        decoration: BoxDecoration(
          border: Border(
            bottom:BorderSide(width:0.5,color:YGColors.color244)
          )
        ),
      ),
    );
    rows.add(
      TableRow(
        children :[
          TableCell(
            child:Center(child: buildTitleText('薪资')),
          ),
          TableCell(
            child:Center(child: buildText('15000')),
          ),
          TableCell(
            child:Center(child: buildText('17000')),
          ),
          TableCell(
            child:Center(child: buildText('19000')),
          ),
          TableCell(
            child:Center(child: buildText('21000')),
          ),
        ],
        decoration: BoxDecoration(
          border: Border(
            bottom:BorderSide(width:0.5,color:YGColors.color244)
          )
        ),
      ),
    );
    return Table(children: rows);
  }
  @override
  Widget build(BuildContext context) {
    // Map  details = Get.arguments;
    void _goBack() {
      Get.back();
    }
    // void addEditRow () {
    //   log('1111');
    // }
    // @override
    // void initState() {
    //   _firstChildList = widget.DividendPlanPresale.children;
    //   super.initState();
      
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "月嫂基本薪资表",
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
            Container(
              margin: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: Image.asset('basic_salary.png', fit: BoxFit.contain),
              height: 200.w,
            ),
            MyCardWidget(
              cardContainer: Container(
                margin: const EdgeInsets.all(15),
                child:createTable(),
                decoration: BoxDecoration(
                  border: Border(
                    top:BorderSide(width:0.5,color:YGColors.color244)
                  )
                ),
              ), height: 100.w, onTap: () {  },
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            Container(
              height: 30.w,
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '其他说明',
                    style: 
                    TextStyle(
                      color: YGColors.color666666,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: 
                Container(
                  child:
                  Text(
                    '26天、每天8小时， 服务质量达标：法定节假日1.5倍奖励；  若服务质量不达标，按标准扣费。',
                    style: 
                    TextStyle(
                      color: YGColors.color333333,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ),
            ),
          ],
        ),
        decoration: new BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color:YGColors.color220,width: 0.5.w )
          )
        )
      ),
    );
  }
}