import 'package:flutter/material.dart';
import 'package:my_tsel/views/card/langganan_card.dart';

class LanggananItem extends StatelessWidget {
  const LanggananItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Langganan Kamu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        LanggananCard(),
      ],
    );
  }
}
