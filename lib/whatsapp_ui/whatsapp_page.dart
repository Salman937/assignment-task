import 'package:first_fultter/whatsapp_ui/whatsapp_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhatsappPage extends StatelessWidget {
  const WhatsappPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff026257),
          centerTitle: false,
          title: Text('WhatsApp'),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Settings')),
                PopupMenuItem(child: Text('Profile')),
                PopupMenuItem(child: Text('Lock App')),
              ];
            })
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera)),
              Tab(text: 'CHAT'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ChatView(),
          Text('Status'),
          Text('Calls'),
        ]),
      ),
    );
  }
}
