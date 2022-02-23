import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yu_gou_app/entitys/user.dart';
import 'package:yu_gou_app/utils/utils.dart';
import 'package:yu_gou_app/values/values.dart';
/// 检查是否有 token
Future<bool> isAuthenticated() async {
  var profileJSON = StorageUtil().getJSON(STORAGE_USER_PROFILE_KEY);
  return profileJSON != null ? true : false;
}

/// 删除缓存 token
Future deleteAuthentication() async {
  await StorageUtil().remove(STORAGE_USER_PROFILE_KEY);
}

/// 重新登录
Future goLoginPage(BuildContext context) async {
  await deleteAuthentication();
}
