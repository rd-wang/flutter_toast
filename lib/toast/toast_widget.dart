import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToastInfoWidget extends StatelessWidget {
  final String msg;

  const ToastInfoWidget({required this.msg, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          child: ClipRect(
            child: Text(
              msg,
              style: TextStyle(fontSize: 14, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class ToastIconWidget extends StatelessWidget {
  final String msg;
  final String resString;

  const ToastIconWidget({required this.msg, this.resString = "img/warning.png", Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Image.asset(
              resString,
              package: 'roobo_toast',
              width: 14,
              height: 14,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                msg,
                style: TextStyle(fontSize: 14, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
