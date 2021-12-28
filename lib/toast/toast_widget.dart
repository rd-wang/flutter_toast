import 'package:flutter/material.dart';

class ToastInfoWidget extends StatelessWidget {
  final String msg;

  const ToastInfoWidget({@required this.msg, Key key}) : super(key: key);

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
              style: TextStyle(fontSize: 14, color: Colors.white, decoration: TextDecoration.none),
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
  final bool flag;

  const ToastIconWidget({@required this.msg, this.flag = true, Key key}) : super(key: key);

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
        children: [
          Icon(
            flag ? Icons.check_circle : Icons.cancel,
            color: Colors.white,
            size: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              msg,
              style: TextStyle(fontSize: 14, color: Colors.white, decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
