import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/pages/Add.dart';
import 'package:pc/pages/PcNumberDetails.dart';

class CustomersData extends StatelessWidget {
  const CustomersData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("9327197604"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(
                Icons.computer,
                size: 30,
              ),
              title: Text(
                'Pc Number $index',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddPage()),
                        );
                      },
                      icon: Icon(Icons.add, size: 30)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PcNumberDetails()),
                        );
                      },
                      icon: Icon(Icons.remove_red_eye, size: 30)),
                ],
              ),
            );
          }),
    );
  }
}
