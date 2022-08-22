import 'package:flutter/material.dart';

class CategoryInternetCard extends StatelessWidget {
  const CategoryInternetCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      height: 200,
      child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemCount: 17,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 13,
            childAspectRatio: 60 / 139,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(left: 12, right: 50),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffE52D27),
                  Color(0xffB31217),
                ]),
                borderRadius: BorderRadius.all(
                  const Radius.circular(8),
                ),
              ),
              child: const Center(
                child: const Text(
                  'MyTelkomsel Reward',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
