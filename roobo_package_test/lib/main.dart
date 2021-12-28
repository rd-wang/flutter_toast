import 'package:flutter/material.dart';
import 'package:roobo_toast/toast/toast_util.dart';
import 'package:oktoast/oktoast.dart';

import 'toast_widget.dart';

void main() {
  runApp(OKToast(
    // 2-A: wrap your app with OKToast
    textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
    backgroundColor: Colors.black87,
    radius: 12.0,
    child: MaterialApp(
      title: 'Demo for OKToast',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Container(
        color: Colors.white,
        child: TextButton(
            onPressed: () {
              print('dsafsdf');
              ToastUtil.showToast("msg");
            },
            child: Text("3124dfdddfd234")),
      )
      ,
    ),
    animationDuration: Duration.zero,
    duration: const Duration(seconds: 2),
  ));
}
