import 'package:oktoast/oktoast.dart' as ok;
import 'package:roobo_toast/toast/toast_widget.dart';

enum ToastType {
  Success,
  Info,
  Error,
  Warning,
}

class ToastUtil {
  static showToast(String msg, {ToastType type = ToastType.Info}) {
    switch (type) {
      case ToastType.Success:
        ok.showToastWidget(ToastIconWidget(
          msg: msg,
          resString: "img/succeed.png",
        ));
        break;
      case ToastType.Error:
        ok.showToastWidget(ToastIconWidget(
          msg: msg,
          resString: "img/error.png",
        ));
        break;
      case ToastType.Warning:
        ok.showToastWidget(ToastIconWidget(
          msg: msg,
          resString: "img/warning.png",
        ));
        break;
      case ToastType.Info:
        ok.showToastWidget(ToastInfoWidget(
          msg: msg,
        ));
        break;
    }
  }
}
