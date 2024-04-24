import 'package:flutter/material.dart';
import 'package:instax/components/akses.dart';
import 'package:instax/components/goclub.dart';
import 'package:instax/components/gopay.dart';
import 'package:instax/components/gopaylatter.dart';
import 'package:instax/components/menus.dart';
import 'package:instax/components/news.dart';
import 'package:instax/components/search.dart';
import 'package:instax/theme.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  'Beranda',
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map(
                (title) => Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    child: Center(
                      child: Text(
                        title,
                        style: semibold14.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search
            Search(),

            // Gopay
            Gopay(),

            // Menu Icons
            Menus(),

            // Go club
            Goclub(),

            // Akses Cepat
            AksesCepat(),

            // Gopaylatter
            GopayLatter(),

            SizedBox(
              height: 24,
            ),

            // News
            Newss(),
            //
          ],
        ),
      ),
    );
  }
}
