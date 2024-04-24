import 'package:flutter/material.dart';
import 'package:instax/datas/news.dart';
import 'package:instax/theme.dart';

class Newss extends StatelessWidget {
  const Newss({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...news.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: dark4),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/${item.image}'),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: bold16.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          item.description,
                          style: regular14.copyWith(color: dark2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
