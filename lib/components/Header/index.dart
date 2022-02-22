import "package:flutter/material.dart";
// ignore: unused_import
import 'package:get/get.dart';

class Header extends StatelessWidget  {
    final String title;
    final bool isShowReturnArrow;
    // final Widget leading;
    final List<Widget> actionList;
    const Header({
      required this.title,
      // required this.leading,
      this.isShowReturnArrow=true,
      required this.actionList
    });
    @override
    Widget build(BuildContext context) {
      return AppBar(
        title: Text("App Name",
        textAlign: TextAlign.center,),
        automaticallyImplyLeading: isShowReturnArrow, 
        // leading: leading,
        actions:<Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {

            },
          )
        ]
      );
    }
}