import 'package:flutter/material.dart';
import 'package:yu_gou_app/entitys/entitys.dart';
import 'package:yu_gou_app/utils/utils.dart';
/// 用户
class UploadImageApi {
  /// 登录
  static Future<UserLoginResponseEntity> login({
    required BuildContext context,
    required UploadImageRequestEntity params,
  }) async {
    var response = await HttpUtil().postForm(
      '/file/uploadFile',
      params: params,
    );
    return UserLoginResponseEntity.fromJson(response);
  }
}