import 'package:flutter/material.dart';

import 'package:my_tsel/views/card/news_card.dart';
import 'package:my_tsel/views/items/category_dirumah_item.dart';
import 'package:my_tsel/views/items/category_internet_item.dart';
import 'package:my_tsel/views/items/category_populer_item.dart';
import 'package:my_tsel/views/items/langganan_item.dart';
import 'package:my_tsel/views/items/search_item.dart';

class InternetPage extends StatelessWidget {
  const InternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 26,
          ),
        ),
        title: const Text(
          'Paket Internet',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const InternetBody(),
    );
  }
}

class InternetBody extends StatelessWidget {
  const InternetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchItem(),
          SizedBox(
            height: 16,
          ),
          NewsCard(),
          const SizedBox(
            height: 32,
          ),
          LanggananItem(),
          SizedBox(
            height: 32,
          ),
          CategoryInternetItem(),
          SizedBox(
            height: 32,
          ),
          PopulerInternetItem(),
          SizedBox(
            height: 32,
          ),
          DirumahInternetItem(),
        ],
      ),
    );
  }
}
