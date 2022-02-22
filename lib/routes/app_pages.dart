import 'package:get/get.dart';
import 'package:yu_gou_app/pages/demo/demo2.dart';
import 'package:yu_gou_app/pages/demo/index.dart';
import 'package:yu_gou_app/pages/index.dart';
import 'package:yu_gou_app/pages/index_page.dart';
import 'package:yu_gou_app/pages/founder/index.dart';
import 'package:yu_gou_app/pages/founder/principal_auth.dart';
import 'package:yu_gou_app/pages/founder/equity_auth.dart';
import 'package:yu_gou_app/pages/founder/star_babysitter.dart';
import 'package:yu_gou_app/pages/founder/monthly_salary.dart';
import 'package:yu_gou_app/pages/founder/dividend_plan_presale.dart';
import 'package:yu_gou_app/pages/founder/dividend_plan_wait.dart';
import 'package:yu_gou_app/pages/founder/recruitment_code.dart';
import 'package:yu_gou_app/pages/founder/recruitment_qr_code.dart';
// 合伙人页面
// import 'package:yu_gou_app/pages/founder/tableExample.dart';
import 'package:yu_gou_app/pages/partner/contract_order.dart';
import 'package:yu_gou_app/pages/partner/cooperation_details.dart';
import 'package:yu_gou_app/pages/partner/funding_additional_projects.dart';
import 'package:yu_gou_app/pages/partner/contribution_record.dart';
import 'package:yu_gou_app/pages/partner/project_principal_expenditure.dart';
import 'package:yu_gou_app/pages/partner/project_funding_details.dart';
import 'package:yu_gou_app/pages/partner/project_orders.dart';
import 'package:yu_gou_app/pages/partner/door_to_door_service.dart';
import 'package:yu_gou_app/pages/partner/audit_results.dart';
import 'package:yu_gou_app/pages/partner/audit_results_ok.dart';
import 'package:yu_gou_app/pages/partner/new_contract.dart';


// 会员身份
import 'package:yu_gou_app/pages/member/member_bill.dart';
import 'package:yu_gou_app/pages/member/service_package.dart';
import 'package:yu_gou_app/pages/member/service_pricelist.dart';
import 'package:yu_gou_app/pages/member/basic_salary.dart';
import 'package:yu_gou_app/pages/member/partition_rules.dart';
// import 'package:yu_gou_app/pages/member/sign_in.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INDEX, page: () => const Index()),
    GetPage(name: Routes.INDEXPAGE, page: () => const IndexPage()),
    GetPage(name: Routes.DEMOINDEX, page: () => DemoIndex()), // demo页面
    GetPage(name: Routes.DEMO2, page: () => Demo2()), // demo2页面
    GetPage(name: Routes.Founder, page: () => FounderIndex()),
    GetPage(name: Routes.PRINCIPALAUTH, page: () => const PrincipalAuth()),
    GetPage(name: Routes.EQUITYAUTH, page: () => EquityAuth()),
    GetPage(name: Routes.STARBABYSITTER, page: () => const Starbabysitter()),
    GetPage(name: Routes.MONTHLYSALARY, page: () => const MonthlySalary()),
    GetPage(name: Routes.DIVIDENDPLANPRESALE, page: () => const DividendPlanPresale()),
    GetPage(name: Routes.DIVIDENDPLANWAIT, page: () => const DividendPlanWait()),
    GetPage(name: Routes.RECRUITMENTCODE, page: () => RecruitmentCode()),
    GetPage(name: Routes.RECRUITMENTQRCODE, page: () => RecruitmentQrCode()),
    GetPage(name: Routes.CONTRACTORDER, page: () => ContractOrder()),
    GetPage(name: Routes.COOPERATIONDETAILS, page: () => const CooperationDetails()),
    GetPage(name: Routes.FUNDADDITIONALPROJECTS, page: () => FundingAdditionalProjects()),
    GetPage(name: Routes.CONTRIBUTIONRECORD, page: () => ContributionRecord()),
    GetPage(name: Routes.PROJECTPRINCIPALEXPENDITURE, page: () => ProjectPrincipalExpenditure()),
    GetPage(name: Routes.PROJECTFUNDINGDETAILS, page: () => ProjectFundingDetails()),
    GetPage(name: Routes.PROJECTORDERS, page: () => ProjectOrders()),
    GetPage(name: Routes.DOORTODOORSERVICE, page: () => DoorToDoorService()),
    GetPage(name: Routes.AUDITRESULTS, page: () => AuditResults()),
    GetPage(name: Routes.AUDITRESULTSOk, page: () => AuditResultsOk()),
    GetPage(name: Routes.NEWCONTRACTS, page: () => NewContracts()),
    GetPage(name: Routes.MEMBERBILL, page: () => MemberBill()),
    GetPage(name: Routes.SERVICEPACKAGE, page: () => ServicePackage()),
    GetPage(name: Routes.SERVICEPRICELIST, page: () => const ServicePricelist()),
    GetPage(name: Routes.BASICSALARY, page: () => const BasicSalary()),
    GetPage(name: Routes.PARTITIONRULES, page: () => const PartitionRules()),
    // GetPage(name: Routes.SIGNIN, page: () => SignInPage()),
    
  ];
}
