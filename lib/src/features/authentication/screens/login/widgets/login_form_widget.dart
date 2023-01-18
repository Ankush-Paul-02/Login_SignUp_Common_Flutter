import 'package:dev_mate/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:dev_mate/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(CupertinoIcons.person),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(CupertinoIcons.lock_shield),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(CupertinoIcons.eye))),
          ),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModelBottomSheet(context);
                },
                child: const Text(tForgetPassword)),
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const DashBoard());
                  },
                  child: Text(tLogin.toUpperCase())))
        ],
      ),
    ));
  }
}
