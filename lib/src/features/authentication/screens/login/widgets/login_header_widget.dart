import 'package:flutter/material.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(
            tWelcomeImage1,
          ),
          height: size.height * 0.2,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
