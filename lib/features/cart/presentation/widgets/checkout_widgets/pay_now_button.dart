import 'package:flutter/material.dart';

import '../../../../../core/localization/get_os.dart';
import '../../../../../core/localization/get_translate.dart';
import '../../../../../core/routing/navigate_to.dart';
import '../../../../../core/widget/adaptive/adaptive_button.dart';
import '../../pages/check_out_page.dart';

class PayNowButton extends StatelessWidget {
  const PayNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      os: getOs(),
      function: () {

      },
      text: getTranslated(
          context, "MyCart_page_text_button_pay_now_key"),
      background: Colors.black87,
      radius: 15,
    );
  }
}

