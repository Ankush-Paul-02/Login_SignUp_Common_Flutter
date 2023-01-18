import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/text_string.dart';

class DashBoardSearchBox extends StatelessWidget {
  const DashBoardSearchBox({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashBoardSearch,
            style:
                textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)),
          ),
          const Icon(CupertinoIcons.mic_fill)
        ],
      ),
    );
  }
}
