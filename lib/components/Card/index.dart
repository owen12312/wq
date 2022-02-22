import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class MyCardWidget extends StatefulWidget {
    final double  height;
    final VoidCallback  onTap; //点击list 回调
    final Widget cardContainer;// 右侧文字
    const MyCardWidget({
      Key? key, 
      required this.height,
      required this.onTap,
      required this.cardContainer,
    }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return myCardsWidgetState();
  }
}
class myCardsWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
      return 
      GestureDetector(
        child:Container(
          height: this.widget.height,
          child:this.widget.cardContainer,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        onTap: this.widget.onTap,//点击
        onDoubleTap: () => {}, //双击
        onLongPress: () => {}, //长按
      );
  }
}