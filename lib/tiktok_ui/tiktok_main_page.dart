import 'package:flutter/material.dart';

class TikTokMainPage extends StatefulWidget {
  TikTokMainPage({Key? key}) : super(key: key);

  @override
  State<TikTokMainPage> createState() => _TikTokMainPageState();
}

class _TikTokMainPageState extends State<TikTokMainPage> {
  int selectedNav = 0;
  goToPages(index) {
    setState(() {
      selectedNav = index;
    });
  }

  // List<Widget> _page = [
  //   Text('Page 1');
  //   Text('Page 2');
  //   Text('Page 3');
  //   Text('Page 4');
  //   Text('Page 5');
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _page(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedNav,
        onTap: goToPages(selectedNav),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
