import 'package:oktoast/oktoast.dart' as ok;
import 'package:roobo_toast/toast/toast_widget.dart';

enum ToastType {
  Success,
  Info,
  Error,
  Toast,
}

class ToastUtil {
  static showToast(String msg, {ToastType type = ToastType.Toast}) {
    switch (type) {
      case ToastType.Success:
        ok.showToastWidget(ToastIconWidget(
          msg: msg,
          flag: true,
        ));
        break;
      case ToastType.Error:
        ok.showToastWidget(ToastIconWidget(
          msg: msg,
          flag: false,
        ));
        break;
      case ToastType.Info:
      case ToastType.Toast:
        ok.showToastWidget(ToastInfoWidget(
          msg: msg,
        ));
        break;
    }
  }
}
