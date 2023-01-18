import 'package:flutter/material.dart';
import '../../../../../constants/colors.dart';
import '../../../models/dashboard/categories_model.dart';

class DashBoardCategories extends StatelessWidget {
  const DashBoardCategories({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashBoardCategoriesModel.list;
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tDarkColor),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: textTheme.headline6?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        list[index].subHeading,
                        style: textTheme.bodyText2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
