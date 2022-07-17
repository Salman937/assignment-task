import 'dart:math';
import 'dart:ui';

import 'package:first_fultter/screens/message_page.dart';
import 'package:first_fultter/screens/wishes_model.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List wishes = [
  //   'Eid Wishes',
  //   'Channad Raat Wishes',
  //   'Jhumma Mubarak',
  //   'Bakraa Eid Mubarak'
  // ];

  go(BuildContext contex, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MessagePage(
          title: title,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Set mySet = {};
    List newList = [];
    for (var item in wishes) {
      mySet.add(item.category);
    }
    newList = mySet.toList();
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: newList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                go(context, newList[index]);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(2, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    newList[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
