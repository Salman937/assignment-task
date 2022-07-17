import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ...List.generate(
          20,
          (index) => ListTile(
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            title: Text('Salman Iqbal'),
            subtitle: Text('Sanga ye alaka'),
            trailing: Icon(Icons.check),
          ),
        )
      ]),
    );
  }
}
