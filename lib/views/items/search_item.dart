import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xffF1F2F6),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xffA4B0BE),
          ),
          hintText: 'Cari paket favorit kamu ...',
          hintStyle: TextStyle(
            color: Color(0xffA4B0BE),
          ),
        ),
      ),
    );
  }
}
