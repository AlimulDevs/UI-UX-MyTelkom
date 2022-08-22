import 'package:flutter/material.dart';
import 'package:my_tsel/views/card/category_populer_card.dart';

class PopulerInternetItem extends StatelessWidget {
  const PopulerInternetItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Popular',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        CategoryPopulerCard()
      ],
    );
  }
}
