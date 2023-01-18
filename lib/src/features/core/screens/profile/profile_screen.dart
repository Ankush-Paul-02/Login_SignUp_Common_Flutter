import 'package:dev_mate/src/constants/colors.dart';
import 'package:dev_mate/src/constants/image_string.dart';
import 'package:dev_mate/src/constants/sizes.dart';
import 'package:dev_mate/src/constants/text_string.dart';
import 'package:dev_mate/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:dev_mate/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:dev_mate/src/features/core/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? tWhiteColor : tDarkColor;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                CupertinoIcons.left_chevron,
                color: iconColor,
              ),
            ),
            title: Center(
              child: Text(
                tProfile,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
                    color: iconColor,
                  ))
            ],
          ),
          body: SingleChildScrollView(
              child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                          image: AssetImage(tProfileImg),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,
                        ),
                        child: const Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: tDarkColor,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  tProfileHeading,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  tProfileSubHeading,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: isDark
                          ? ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder())
                          : ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                      onPressed: () => Get.to(const UpdateProfileScreen()),
                      child: isDark
                          ? const Text(
                              tEditProfile,
                              style: TextStyle(color: tDarkColor),
                            )
                          : const Text(
                              tEditProfile,
                              style: TextStyle(color: tDarkColor),
                            )),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                // MENU
                ProfileMenuWidget(
                  title: "Settings",
                  icon: LineAwesomeIcons.cog,
                  onPress: () {},
                ),
                ProfileMenuWidget(
                  title: "Billing Details",
                  icon: LineAwesomeIcons.wallet,
                  onPress: () {},
                ),
                ProfileMenuWidget(
                  title: "User Management",
                  icon: LineAwesomeIcons.user_check,
                  onPress: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                ProfileMenuWidget(
                  title: "Information",
                  icon: LineAwesomeIcons.info,
                  onPress: () {},
                ),
                ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  onPress: () {
                    Get.to(const WelcomeScreen());
                  },
                  endIcon: false,
                ),
              ],
            ),
          ))),
    );
  }
}
