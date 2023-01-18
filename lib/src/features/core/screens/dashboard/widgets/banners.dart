import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class DashBoardBanner extends StatelessWidget {
  const DashBoardBanner({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                        child: Image(
                      image: AssetImage(tBookmarkImg),
                      height: 30,
                    )),
                    Flexible(
                        child: Image(
                      image: AssetImage(tBannerImg1),
                      height: 90,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  tDashBoardBannerTitle1,
                  style: textTheme.headline4
                      ?.apply(color: isDark ? tDarkColor : Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashBoardBannerSubTitle,
                  style: textTheme.bodyText2
                      ?.apply(color: isDark ? tDarkColor : Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: tDashBoardPadding,
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                          child: Image(
                        image: AssetImage(tBookmarkImg),
                        height: 30,
                      )),
                      Flexible(
                          child: Image(
                        image: AssetImage(tBannerImg1),
                        height: 90,
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    tDashBoardBannerTitle2,
                    style: textTheme.headline4
                        ?.apply(color: isDark ? tDarkColor : Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    tDashBoardBannerSubTitle,
                    style: textTheme.bodyText2
                        ?.apply(color: isDark ? tDarkColor : Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {}, child: const Text(tDashBoardButton)),
            )
          ],
        ))
      ],
    );
  }
}
