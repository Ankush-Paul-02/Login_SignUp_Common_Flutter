import 'package:dev_mate/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(tGoogleLogoImage),
                width: 20,
              ),
              onPressed: () {},
              label: Text(
                tSignInWithGoogle.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Get.to(() => const SignUpScreen());
            },
            child: Text.rich(TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                      text: tSignUp.toUpperCase(),
                      style: const TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
