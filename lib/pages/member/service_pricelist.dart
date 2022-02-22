
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yu_gou_app/components/Card/index.dart';

class ServicePricelist extends StatelessWidget {
  const ServicePricelist({Key? key}) : super(key: key);
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
            child:Center(child: buildTitleText('等待期')), 
            
          ),
          TableCell(
            child:Center(child: buildText('60天')), 
          ),
          TableCell(
            child:Center(child: buildText('90天')),
          ),
          TableCell(
            child:Center(child: buildText('120天')),
          ),
          TableCell(
            child:Center(child: buildText('150天')),
          ),
          TableCell(
            child:Center(child: buildText('180天')),
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
            child:Center(child: buildTitleText('折扣')),
          ),
          TableCell(
            child:Center(child: buildText('9.5折')),
          ),
          TableCell(
            child:Center(child: buildText('9折')),
          ),
          TableCell(
            child:Center(child: buildText('8折')),
          ),
          TableCell(
            child:Center(child: buildText('7折')),
          ),
          TableCell(
            child:Center(child: buildText('6折')),
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
            child:Center(child: buildTitleText('原价')),
          ),
          TableCell(
            child:Center(child: buildText('9800')),
          ),
          TableCell(
            child:Center(child: buildText('9800')),
          ),
          TableCell(
            child:Center(child: buildText('9800')),
          ),
          TableCell(
            child:Center(child: buildText('9800')),
          ),
          TableCell(
            child:Center(child: buildText('9800')),
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
          "价格表",
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
              child: Image.asset('price.png', fit: BoxFit.contain),
              height: 210.w,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '三星套餐',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '服务人数：3人',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ) ,
              height: 48.w,
              margin: const EdgeInsets.only(top: 15),
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
              ), height: 120.w, onTap: () {  },
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: 
                Container(
                  child:Text(
                    '服务人员：育婴师（初级）、妇产护士、妇产医师',
                    style: 
                    TextStyle(
                      color: YGColors.color333333,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ),
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '四星套餐',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '服务人数：5人',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ) ,
              height: 48.w,
              margin: const EdgeInsets.only(top: 15),
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
              ), height: 120.w, onTap: () {  },
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: 
                Container(
                  child:Text(
                    '服务人员：育婴师（中级）、妇产护士、妇产医师、营养师、心理咨询师',
                    style: 
                    TextStyle(
                      color: YGColors.color333333,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ),
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '五星套餐',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '服务人数：7人',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ) ,
              height: 48.w,
              margin: const EdgeInsets.only(top: 15),
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
              ), height: 120.w, onTap: () {  },
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: 
                Container(
                  child:Text(
                    '服务人员：育婴师（高级）、妇产护士、妇产医师、营养师、心理咨询师、中医理疗、瑜伽教练',
                    style: 
                    TextStyle(
                      color: YGColors.color333333,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ),
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '七星套餐',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '服务人数：10人',
                        style: TextStyle(
                          color: YGColors.color333333,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ) ,
              height: 48.w,
              margin: const EdgeInsets.only(top: 15),
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
              ), height: 120.w, onTap: () {  },
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: 
                Container(
                  child:Text(
                    '服务人员：育婴师（特级）、妇产护士、妇产医师、营养师、心理咨询师、中医理疗、瑜伽教练、早教专家',
                    style: 
                    TextStyle(
                      color: YGColors.color333333,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ),
            ),
            Container(
              height: 15.w,
              decoration: new BoxDecoration(
                color: YGColors.color244,
              )
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