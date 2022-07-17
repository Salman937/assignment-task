import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rollNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        title: Text('ID CARD'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 60, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://cdn.dribbble.com/users/2364329/screenshots/5930135/aa.jpg?compress=1&resize=800x600&vertical=top'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 5,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Salman Iqbal',
              style: TextStyle(
                color: Colors.amber[800],
                letterSpacing: 5,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Roll Number',
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 5,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${rollNumber}',
              style: TextStyle(
                color: Colors.amber[800],
                letterSpacing: 5,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Living',
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 5,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swat',
              style: TextStyle(
                color: Colors.amber[800],
                letterSpacing: 5,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Saloobhai@gmail.com',
                  style: TextStyle(
                    color: Colors.amber[800],
                    letterSpacing: 5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            rollNumber += 1;
          });
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),
    );
  }
}
