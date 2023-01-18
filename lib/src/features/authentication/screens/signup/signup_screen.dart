import 'package:dev_mate/src/common_widgets/form/form_header_widget.dart';
import 'package:dev_mate/src/constants/image_string.dart';
import 'package:dev_mate/src/constants/sizes.dart';
import 'package:dev_mate/src/constants/text_string.dart';
import 'package:dev_mate/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:dev_mate/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormHeaderWidget(
                    image: tWelcomeImage1,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle),
                SignUpFormWidget(),
                SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
