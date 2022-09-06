import 'package:ebook_app_ui/constant/color_constant.dart';
import 'package:ebook_app_ui/model/book_model.dart';
import 'package:flutter/material.dart';

class IconTextBox extends StatelessWidget {
  final String title;
  final String count;

  const IconTextBox({
    required this.title,
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(
                    4,
                  ),
                  decoration: BoxDecoration(
                      color: ColorConstant.appColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(
                        6.0,
                      )),
                  child: Icon(
                    Icons.person_outlined,
                    color: ColorConstant.appColor,
                  ),
                ),
                SizedBox(
                  width: size.width * .02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    Text(
                      count,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
