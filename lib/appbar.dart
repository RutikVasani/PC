import 'package:flutter/material.dart';
import 'package:pc/main.dart';
import 'package:pc/pages/Add.dart';
import 'pages/Home.dart';
import 'pages/SearchPage.dart';
import 'pages/engineeringPage.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        toolbarHeight: 70.0,
        title: Text(
          'PC Computer',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () => showSearch(context: context, delegate: Search()),
          ),
          IconButton(
            icon: const Icon(Icons.add, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.engineering),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EngineeringPage()));
            },
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            icon: const Icon(Icons.home, size: 35)),
      ),
      body: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
