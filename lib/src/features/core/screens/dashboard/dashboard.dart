import 'package:dev_mate/src/constants/sizes.dart';
import 'package:dev_mate/src/constants/text_string.dart';
import 'package:dev_mate/src/features/core/screens/dashboard/widgets/app_bar.dart';
import 'package:dev_mate/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:dev_mate/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:dev_mate/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:dev_mate/src/features/core/screens/dashboard/widgets/top_members.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // variables
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: const DashBoardAppBar(),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(tDashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text(
                tDashBoardTitle,
                style: textTheme.bodyText2,
              ),
              Text(
                tDashBoardHeading,
                style: textTheme.headline2,
              ),
              const SizedBox(
                height: tDashBoardPadding,
              ),

              // Search Bar
              DashBoardSearchBox(textTheme: textTheme),
              const SizedBox(
                height: tDashBoardPadding,
              ),
              // categories
              DashBoardCategories(textTheme: textTheme),

              const SizedBox(
                height: tDashBoardPadding,
              ),
              // Banner
              DashBoardBanner(textTheme: textTheme),
              const SizedBox(
                height: tDashBoardPadding,
              ),
              // Top Courses
              Text(
                tDashBoardTopMembers,
                style: textTheme.headline4?.apply(fontSizeFactor: 1.2),
              ),
              DashBoardTopMember(textTheme: textTheme)
            ],
          ),
        )),
      ),
    );
  }
}
