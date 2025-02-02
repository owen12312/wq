import 'package:flutter/material.dart';
import 'package:yu_gou_app/entitys/entitys.dart';
import 'package:yu_gou_app/utils/utils.dart';
/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login({
    required BuildContext context,
    required UserLoginRequestEntity params,
  }) async {
    var response = await HttpUtil().post(
      '/userMgr/login',
      params: params,
    );
    return UserLoginResponseEntity.fromJson(response);
  }
}