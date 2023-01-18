import 'package:dev_mate/src/features/authentication/controllers/signup_controller.dart';
import 'package:dev_mate/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(CupertinoIcons.person),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(CupertinoIcons.mail),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(CupertinoIcons.phone),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(CupertinoIcons.lock_shield),
                  suffixIcon: Icon(CupertinoIcons.eye)),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(
                            controller.email.text.trim(),
                            controller.password.text.trim());
                        // SignUpController.instance.phoneAuthentication(
                        //     controller.phoneNo.text.trim());
                        // Get.to(const OTPScreen());
                      }
                    },
                    child: Text(tSignUp.toUpperCase()))),
          ],
        ),
      ),
    );
  }
}
