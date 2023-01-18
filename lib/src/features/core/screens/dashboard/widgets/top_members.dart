import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';

class DashBoardTopMember extends StatelessWidget {
  const DashBoardTopMember({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(
            width: 400,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Ankush Paul",
                            style: textTheme.headline4?.apply(
                                color: isDark ? tDarkColor : Colors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Flexible(
                          child: Image(
                            image: AssetImage(tTopMemberImg1),
                            height: 120,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder()),
                            child: Icon(
                              CupertinoIcons.personalhotspot,
                              color: isDark ? Colors.black : Colors.white,
                            )),
                        const SizedBox(
                          width: tDashBoardPadding,
                        ),
                        Column(
                          children: [
                            Text(
                              "Flutter Developer",
                              style: textTheme.headline4?.apply(
                                  color: isDark ? tDarkColor : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Dart & Java Language",
                              style: textTheme.bodyText2?.apply(
                                  color: isDark ? tDarkColor : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 400,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Ankush Paul",
                            style: textTheme.headline4?.apply(
                                color: isDark ? tDarkColor : Colors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Flexible(
                          child: Image(
                            image: AssetImage(tTopMemberImg1),
                            height: 120,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder()),
                            child: Icon(
                              CupertinoIcons.personalhotspot,
                              color: isDark ? Colors.black : Colors.white,
                            )),
                        const SizedBox(
                          width: tDashBoardPadding,
                        ),
                        Column(
                          children: [
                            Text(
                              "Flutter Developer",
                              style: textTheme.headline4?.apply(
                                  color: isDark ? tDarkColor : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Dart & Java Language",
                              style: textTheme.bodyText2?.apply(
                                  color: isDark ? tDarkColor : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 400,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Ankush Paul",
                            style: textTheme.headline4?.apply(
                                color: isDark ? tDarkColor : Colors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Flexible(
                          child: Image(
                            image: AssetImage(tTopMemberImg1),
                            height: 120,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder()),
                            child: Icon(
                              CupertinoIcons.personalhotspot,
                              color: isDark ? Colors.black : Colors.white,
                            )),
                        const SizedBox(
                          width: tDashBoardPadding,
                        ),
                        Column(
                          children: [
                            Text(
                              "Flutter Developer",
                              style: textTheme.headline4?.apply(
                                  color: isDark ? tDarkColor : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Dart & Java Language",
                              style: textTheme.bodyText2?.apply(
                                  color: isDark ? tDarkColor : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
