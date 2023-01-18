import 'package:dev_mate/src/common_widgets/form/form_header_widget.dart';
import 'package:dev_mate/src/constants/image_string.dart';
import 'package:dev_mate/src/constants/sizes.dart';
import 'package:dev_mate/src/constants/text_string.dart';
import 'package:dev_mate/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: tDefaultSize * 4,
                ),
                const FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tForgetPassword,
                  subTitle: tForgetMailSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: tFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(tEmail),
                          hintText: tEmail,
                          prefixIcon: Icon(CupertinoIcons.mail)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const OTPScreen());
                            },
                            child: const Text(tNext)))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
