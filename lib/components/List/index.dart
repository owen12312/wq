import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yu_gou_app/util/yg_colors.dart';

// 返回带有必填*的文本，*号默认红色
_getImportanceText(Widget  text) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: <Widget>[
      text,
      const Padding(
        padding: EdgeInsets.all(4),
        child:Text(
          "*",
          style: TextStyle(color: Colors.red, fontSize: 15),
        ),
      )
    ],
  );
}


class ListWidget extends StatefulWidget {
  final VoidCallback  onTap; //点击list 回调
  final double  listHeight; // list 高度
  final Widget  iconLeft ; //左侧icon
  final Widget  iconRight ; //右侧icon 
  final Widget  rightWidget ; //右侧icon
  final bool  importance ; //是否是带*号左侧文字
  final Widget leftTitle;// 左侧文字 
  final Widget rightTitle;// 右侧文字
  // final ObjectKey details; //点击传递的数据
  // final ObjectKey parameters;
  final bool  isShowTopBorder ; //是否显示上边框
  final bool  isShowBottomBorder ; //是否显示下边框
  final bool  isShowRightArrow ; //是否显示跳转图标
  final bool  islistHeight ; //是否显示跳转图标
  const ListWidget({
    Key ? key, 
    required this.leftTitle, 
    required this.onTap,
    required this.listHeight,
    required this.iconLeft,
    required this.iconRight,
    required this.rightTitle,
    // required  this.details,
    // required this.parameters,
    required this.importance,
    required this.isShowTopBorder,
    required this.isShowBottomBorder,
    required this.isShowRightArrow,
    required this.rightWidget,
    required this.islistHeight,
    }): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ListWidgetState();
  }

}
class ListWidgetState extends State<ListWidget> {
  get details => null;
  get parameters => null;
  @override
  Widget build(BuildContext context) {
      // Map details = Get.arguments;
      // Map parameters = Get.parameters;
      return 
      GestureDetector(
        child:
          Container(
            height: 60.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child:Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          this.widget.iconLeft ,
                          this.widget.importance ?_getImportanceText(this.widget.leftTitle)  : this.widget.leftTitle
                        ],),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          textDirection:TextDirection.rtl,
                          children: [
                            this.widget.isShowRightArrow
                            ?SizedBox(
                              height: 40.w,
                              child:IconButton(
                              padding: new EdgeInsets.all(0.0),
                              onPressed: ()=>{
                                this.widget.onTap()
                              }, icon:  ImageIcon(AssetImage("right_arrow.png"),size: 20.0)),
                            )
                            :this.widget.isShowRightArrow
                            ?SizedBox(
                              height: 40.w,
                              child:this.widget.rightWidget ,
                            ) 
                            : SizedBox(
                              height: 40.w,
                            ),
                            this.widget.rightTitle,
                            this.widget.iconRight,
                          ],
                        ),
                      ),
                    ),
                  ],
                  ), 
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: this.widget.isShowBottomBorder
                    ?BorderSide(width: 0,color:YGColors.color220)
                    :BorderSide(width: this.widget.isShowBottomBorder ? 0.5 :0,color:YGColors.color220)
                    ,
                  top: 
                    this.widget.isShowTopBorder?                       
                    BorderSide(width: 0,color:YGColors.color220)
                        :BorderSide(width: this.widget.isShowTopBorder ? 0.5 :0,color:YGColors.color220),
                  ),

            ),
          ),
          onTap: this.widget.onTap,//点击
          onDoubleTap: () => {}, //双击
          onLongPress: () => {}, //长按
      );
  }
}