import 'package:flutter/material.dart';

class PcNumberDetails extends StatelessWidget {
  const PcNumberDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      SizedBox(height: 150),
      Container(
        margin: EdgeInsets.all(20),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(120.0),
          // border: TableBorder.all(
          //     color: Colors.black, style: BorderStyle.solid, width: 2),
          children: const [
            TableRow(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                children: [
                  Text(
                    'Date',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Bill No.',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Problem',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ]),
            TableRow(children: [
              Text(
                '12/02/2022',
                textAlign: TextAlign.center,
              ),
              Text(
                '631',
                textAlign: TextAlign.center,
              ),
              Text(
                'laptop repair',
                textAlign: TextAlign.center,
              ),
            ]),
            TableRow(children: [
              Text(
                '22/04/2022',
                textAlign: TextAlign.center,
              ),
              Text(
                '745',
                textAlign: TextAlign.center,
              ),
              Text(
                'windows install',
                textAlign: TextAlign.center,
              ),
            ]),
            TableRow(children: [
              Text(
                '06/06/2022',
                textAlign: TextAlign.center,
              ),
              Text(
                '943',
                textAlign: TextAlign.center,
              ),
              Text(
                'printer repair',
                textAlign: TextAlign.center,
              ),
            ]),
          ],
        ),
      ),
    ])));
  }
}
