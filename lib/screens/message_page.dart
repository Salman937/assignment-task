import 'package:first_fultter/screens/detail_page.dart';
import 'package:first_fultter/screens/wishes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessagePage extends StatelessWidget {
  String title;
  MessagePage({required this.title});

  go(BuildContext context, String message) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(
          message: message,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: wishes
              .where((element) => element.category == title)
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      go(context, e.message!);
                    },
                    child: Card(
                      child: Text(
                        e.message!,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
