/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-04 21:34:15
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-06 22:17:40
 * @FilePath: \yu_gou_app\lib\pages\index_page.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // ios风格
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yu_gou_app/routes/app_pages.dart';
import 'package:yu_gou_app/state/state_controller.dart';
import 'package:yu_gou_app/util/yg_colors.dart';

// 入口文件
class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final StateController stateController = Get.put(StateController());

  @override
  Widget build(BuildContext context) {
    /// 角色：0会员，1合伙人，2创始人
    int role = stateController.role;
    // ignore: avoid_print
    print(role);
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<StateController>(
        init: StateController(),
        builder: (ctl) {
          return GetBuilder<StateController>(
            init: StateController(),
            builder: (ctx) => SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 100.w,
                    width: double.infinity,
                  ),
                  Text(
                    // ${role == 1 ? '合伙人' : ''}${role == 2 ? '创始人' : ''}
                    role == 0 ? '会员' : '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                    ),
                  ),
                  (role == 0
                      ? Column(
                          children: [
                            // 会员相关的页面写在这
                            page(Routes.MEMBERBILL, '会员账单'),
                            page(Routes.SERVICEPACKAGE, '产品服务套餐'),
                            page(Routes.SERVICEPRICELIST, '价格表'),
                            page(Routes.BASICSALARY, '月嫂基本薪资表'),
                            page(Routes.PARTITIONRULES, '分成规则'),
                            // page(Routes.SIGNIN, '登录'),
                            page(Routes.CONTRACTORDER, '合同订单'),
                            page(Routes.COOPERATIONDETAILS, '合作详情'),
                            page(Routes.FUNDADDITIONALPROJECTS, '追加出资'),
                            page(Routes.CONTRIBUTIONRECORD, '出资记录'),
                            page(Routes.PROJECTPRINCIPALEXPENDITURE, '项目本金支出记录'),
                            page(Routes.PROJECTFUNDINGDETAILS, '项目出资详情'),
                            page(Routes.PROJECTORDERS, '项目订单'),
                            page(Routes.DOORTODOORSERVICE, '上门服务'),
                            page(Routes.AUDITRESULTS, '审核结果(未通过)'),
                            page(Routes.AUDITRESULTSOk, '审核结果(通过)'),
                            page(Routes.NEWCONTRACTS, '新增合同'),
                            page(Routes.PRINCIPALAUTH, '本金认证'),
                            page(Routes.EQUITYAUTH, '股权认证'),
                            page(Routes.STARBABYSITTER, '三星月嫂'),
                            page(Routes.MONTHLYSALARY, '月嫂薪资说明'),
                            page(Routes.DIVIDENDPLANPRESALE, '分红方案预售期'),
                            page(Routes.DIVIDENDPLANWAIT, '分红方案等待期'),
                            page(Routes.RECRUITMENTCODE, '招募码'),
                            page(Routes.RECRUITMENTQRCODE, '招募码扫码'),
                            
                          ],
                        )
                      : Container()),
                  // (role == 1
                  //     ? Column(
                  //         children: [
                  //           page(Routes.DEMO2, 'demo2页面'),
                  //           // 合伙人相关的页面写在这

                  //         ],
                  //       )
                  //     : Container()),
                  // (role == 2
                  //     ? Column(
                  //         children: const [
                  //         ],
                  //       )
                  //     : Container()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ///
  /// ```
  /// @param { String } page 页面
  /// @params { String } pageName 页面名称
  /// ```
  ///
  InkWell page(String page, String pageName) {
    return InkWell(
      onTap: () {
        Get.toNamed(page, arguments: 'Get is the best');
      },
      child: Container(
        width: 375.w,
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: YGColors.color244,
              width: 1.w,
            ),
          ),
        ),
        child: Text(
          // ignore: unnecessary_string_interpolations
          '$pageName',
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
