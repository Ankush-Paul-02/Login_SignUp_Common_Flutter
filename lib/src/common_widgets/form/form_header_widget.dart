import 'package:flutter/material.dart';
import '../../constants/image_string.dart';
import '../../constants/text_string.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageColor,
    this.heightBetween,
    this.imageHeight = 0.2,
    this.textAlign = TextAlign.center,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String image, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(
            image,
          ),
          height: size.height * 0.2,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
