import 'package:dev_mate/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:dev_mate/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:dev_mate/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        builder: (context) => Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tForgetPasswordTitle,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      tForgetMailSubTitle,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ForgetPasswordBtnWidget(
                      btnIcon: CupertinoIcons.mail,
                      title: tEmail,
                      subTitle: tResetViaEMail,
                      onTap: (() {
                        navigator?.pop(context);
                        Get.to(() => const ForgetPasswordMailScreen());
                      }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ForgetPasswordBtnWidget(
                      btnIcon: CupertinoIcons.device_phone_portrait,
                      title: tPhoneNo,
                      subTitle: tResetViaPhone,
                      onTap: (() {
                        navigator?.pop(context);
                        Get.to(() => const ForgetPasswordPhoneScreen());
                      }),
                    ),
                  ]),
            ));
  }
}
