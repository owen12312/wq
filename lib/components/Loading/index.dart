import 'dart:async';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NetLoadingDialog extends StatefulWidget {
  String loadingText;
  bool outsideDismiss;
  bool loading;
  Function dismissCallback;
  Future<dynamic> requestCallBack;

  NetLoadingDialog(
      {Key?key,
      this.loadingText = "loading...",
      this.outsideDismiss = true,
      required this.dismissCallback,
      required this.loading,
      required this.requestCallBack})
      : super(key: key);

  @override
  State<NetLoadingDialog> createState() => _LoadingDialog();
}

class _LoadingDialog extends State<NetLoadingDialog> {
  _dismissDialog() {
    if (widget.dismissCallback != null) {
      widget.dismissCallback();
    }
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    if (widget.requestCallBack != null) {
      widget.requestCallBack.then((_) {
        Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.loading) {
      return Container();
    }
    return new GestureDetector(
      onTap: widget.outsideDismiss ? _dismissDialog : null,
      child: Material(
        type: MaterialType.transparency,
        child: new Center(
          child: new SizedBox(
            width: 120.0,
            height: 120.0,
            child: new Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new CircularProgressIndicator(),
                  new Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: new Text(
                      widget.loadingText,
                      style: new TextStyle(fontSize: 12.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
