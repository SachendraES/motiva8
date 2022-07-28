import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:motiva8/reports_page.dart';
import 'package:motiva8/tips_card_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  final pages = [
    const ReportsPage(),
    const TipsCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Color.fromRGBO(9, 12, 48, 1.0),
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(91, 94, 117, 1.0),
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.book_outlined,
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      size: 35,
                    )
                  : const Icon(
                      Icons.book_outlined,
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.inbox_outlined,
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      size: 35,
                    )
                  : const Icon(
                      Icons.inbox_outlined,
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      size: 30,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.person,
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      size: 30,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
