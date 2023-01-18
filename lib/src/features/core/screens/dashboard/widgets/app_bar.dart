import 'package:dev_mate/src/features/core/screens/profile/profile_screen.dart';
import 'package:dev_mate/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_string.dart';

class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashBoardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return AppBar(
      leading: Icon(
        CupertinoIcons.bars,
        color: isDark ? Colors.white : Colors.black,
      ),
      title: Text(
        tAppName,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
            onPressed: () {
              Get.to(const ProfileScreen());
            },
            icon: const Image(image: AssetImage(tUserProfileImg)),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
