/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-04 21:32:32
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-06 22:17:13
 * @FilePath: \yu_gou_app\lib\routes\app_routes.dart
 */
part of './app_pages.dart';

abstract class Routes {
  static const INDEX = '/';
  static const INDEXPAGE = '/indexPage';
  static const DEMOINDEX = '/demoIndex'; // demo页面
  static const DEMO2 = '/demo2'; // demo页面
  static const Founder = '/founder'; // demo页面
  static const PRINCIPALAUTH = '/principalAuth'; // 本金认证页
  static const EQUITYAUTH = '/equityAuth'; // 股权认证
  static const STARBABYSITTER = '/starBabysitter'; // 三星月嫂页面
  static const MONTHLYSALARY = '/monthlySalary'; // 月嫂薪资说明
  static const DIVIDENDPLANPRESALE = '/dividendPlanPresale'; // 分红方案页面
  static const DIVIDENDPLANWAIT = '/dividendPlanWait'; // 分红方案等待期
  static const RECRUITMENTCODE = '/recruitmentCode'; // 招募码
  static const RECRUITMENTQRCODE = '/recruitmentQrCode'; // 分红方案等待期
  // 合伙人页面
  static const CONTRACTORDER = '/contractOrder'; // 合同
  static const COOPERATIONDETAILS = '/cooperationDetails'; // 合作详情
  static const FUNDADDITIONALPROJECTS = '/fundingAdditionalProjects'; // 追加出资项目
  static const CONTRIBUTIONRECORD = '/contributionPecord'; // 出资记录
  static const PROJECTPRINCIPALEXPENDITURE = '/projectPrincipalExpenditure'; // 项目本金支出记录
  static const PROJECTFUNDINGDETAILS = '/projectFundingDetails'; // 项目本金支出记录
  static const PROJECTORDERS = '/projectOrders'; // 项目本金支出记录
  static const DOORTODOORSERVICE = '/doorToDoorService'; // 上门服务
  static const AUDITRESULTS = '/auditResults'; // 审核通过
  static const AUDITRESULTSOk = '/auditResultsOk'; // 审核未通过
  static const NEWCONTRACTS = '/newContracts'; // 新增合同
  static const MEMBERBILL = '/memberBill'; // 账单'
  static const SERVICEPACKAGE = '/servicePackage'; // 服务表
  static const SERVICEPRICELIST = '/servicePricelist'; // 价格表
  static const BASICSALARY = '/basicSalary'; // 薪资表
  static const PARTITIONRULES  = '/partitionRules'; // 分成规则
  static const SIGNIN = '/signin'; //登录
}
