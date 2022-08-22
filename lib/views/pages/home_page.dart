import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_tsel/models/category_model.dart';
import 'package:my_tsel/models/sim_card_model.dart';
import 'package:my_tsel/views/card/info_card.dart';
import 'package:my_tsel/views/card/sim_card.dart';
import 'package:my_tsel/views/items/category_item.dart';
import 'package:my_tsel/views/items/covid_item.dart';
import 'package:my_tsel/views/items/news_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffEC2028),
        elevation: 0,
        titleTextStyle: TextStyle(fontWeight: FontWeight.normal),
        title: Row(
          children: [
            Text(
              'Hai, ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            Text(
              'Alimullll',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Image.asset(
            'assets/images/head_icon.png',
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 310,
                ),
                Container(
                  width: double.infinity,
                  height: 143,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/bg_header.png'))),
                ),
                SimCardPage(),
                InfoCard(),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
                bottom: 20,
              ),
              color: Color(0xffF1F2F6),
              width: double.infinity,
              height: 8,
            ),
            CategoryItem(),
            SizedBox(
              height: 32,
            ),
            NewsItem(),
            SizedBox(
              height: 32,
            ),
            CovidItem(),
          ],
        ),
      ),
    );
  }
}
