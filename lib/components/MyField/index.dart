import 'package:flutter/material.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FormUtil {
  static Widget  textField(
    String formKey,
    String value, {
      TextInputType keyboardType = TextInputType.text,
      FocusNode? focusNode,
      controller = TextEditingController ,
      onChanged = Function,
      String hintText = '',
      IconData?prefixIcon,
      onClear = Function,
      bool obscureText = false,
      bool isMustInput = false,
      height = 44.0,
      padding = 10.0,
      String lables = '',
      bool isEnabled = true,
  }) {
    return Container(
      height: height,
      padding: EdgeInsets.only(left:padding,right: padding),
      child: 
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            Container(
              height: height,
              alignment: Alignment.center,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    lables,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: YGColors.color333333,
                    ),
                  ),
                  isMustInput?Text(
                    '*',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: YGColors.colorE60012,
                    ),
                  ):SizedBox(
                    height: 44.w,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Text(
                ':',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: YGColors.color333333,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child:
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 44,
                  minHeight: 44,
                ),
                child:
                  TextField(
                    enabled: isEnabled,
                    keyboardType: keyboardType,
                    focusNode: focusNode,
                    obscureText: obscureText,
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: InputBorder.none,
                      suffixIcon: GestureDetector(
                        child: Offstage(
                          child: Icon(
                            Icons.clear,
                            color:YGColors.color333333 ,
                            size: 15.w,
                          ),
                          offstage: value == '',

                        ),
                        onTap: () {
                          onClear(formKey);
                        },
                      ),
                    ),
                    onChanged: (value) {
                      onChanged(formKey, value);
                    },
                    style: TextStyle(
                      color: YGColors.color333333,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
              )

              ),
          ],
        ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom:BorderSide(width: 0.5,color:YGColors.colorF4F6FB),
          )
      ),
    );
  }
}