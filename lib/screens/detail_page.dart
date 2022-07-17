import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:share_plus/share_plus.dart';

class DetailPage extends StatelessWidget {
  String message;
  DetailPage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            width: double.infinity,
            height: 250,
            constraints: BoxConstraints(maxHeight: 250),
            child: Center(
              child: Text(
                message,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Share.share(message);
                },
                icon: Icon(
                  Icons.share_sharp,
                ),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {
                  FlutterClipboard.copy(message).whenComplete(() => () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Copied'),
                          ),
                        );
                      });
                },
                icon: Icon(Icons.copy_sharp),
                iconSize: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
