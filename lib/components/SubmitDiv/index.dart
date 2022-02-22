import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:yu_gou_app/util/yg_colors.dart';

class SubmitDivWidget extends StatefulWidget {
  final VoidCallback  onTap; //点击list 回调
  final Widget title;// 按钮文字 
  const SubmitDivWidget({
    Key ? key, 
    required this.title, 
    required this.onTap,
    }): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return SubmitDivWidgetWidgetState();
  }
}
class SubmitDivWidgetWidgetState extends State<SubmitDivWidget> {
  get details => null;
  get parameters => null;
  GlobalKey _formKey= new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      // Map details = Get.arguments;
      // Map parameters = Get.parameters;
      return 
      GestureDetector(
        child:
          Container(
            height: 80.w,
            child: Column(
              children: [

                SizedBox(
                  height: 80.w,
                  child: 
                    Padding(
                      padding: const EdgeInsets.only(right: 15,left: 15),
                      child:
                      Container(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                              child:
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,//change background color of button
                                  onPrimary: Colors.red,//change text color of button
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(41),
                                  ),
                                  elevation: 15.0,
                                  textStyle:TextStyle(fontSize: 15.w, color: Colors.white)
                                ),
                                child:
                                  this.widget.title == null
                                  ?Text(
                                    "提交",
                                    style: TextStyle(fontSize:15.w, color: Colors.white),
                                  ):
                                  this.widget.title,
                              ),
                              
                              
                              //   ElevatedButton(
                              //   style: 
                              //   ButtonStyle(
                              //     backgroundColor: MaterialStateProperty.all(Colors.red),
                              //     padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                              //     textStyle: MaterialStateProperty.all(
                              //         TextStyle(fontSize: 15, color: Colors.white)
                              //     ),
                              //     foregroundColor: MaterialStateProperty.all(Colors.white),
                              //   ),
                              //   // ElevatedButton.styleFrom(textStyle: 
                              //   // const TextStyle(fontSize: 14,color:Colors.red,height:40)),
                              //   child: 

                              //   onPressed: () {
                              //     if((_formKey.currentState as FormState).validate()){
                              //       //验证通过提交数据
                              //     }
                              //   },
                              // ),
                            ),
                          ],
                        ),
                      )
  
                    )
                  ,
                )
              ],
            ),
          ),
          onTap: this.widget.onTap,//点击
          onDoubleTap: () => {}, //双击
          onLongPress: () => {}, //长按
      );
  }
}