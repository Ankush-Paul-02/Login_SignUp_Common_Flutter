import 'package:dev_mate/src/constants/sizes.dart';
import 'package:dev_mate/src/constants/text_string.dart';
import 'package:dev_mate/src/features/authentication/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tOtpTitle,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 80),
              ),
              Text(
                tOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "$tOtpMessage abcdtestingemail@gmail.com",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) {
                  otp = code;
                  OTPController.instance.verifyOTP(otp);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        OTPController.instance.verifyOTP(otp);
                      },
                      child: const Text(tNext)))
            ],
          ),
        ),
      ),
    );
  }
}
