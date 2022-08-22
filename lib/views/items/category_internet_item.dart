import 'package:flutter/material.dart';
import 'package:my_tsel/views/card/category_internet_card.dart';

class CategoryInternetItem extends StatelessWidget {
  const CategoryInternetItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kategori',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lihat Semua',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xffEC2028),
                ),
              )
            ],
          ),
        ),
        CategoryInternetCard()
      ],
    );
  }
}
