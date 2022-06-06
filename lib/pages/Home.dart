import 'package:flutter/material.dart';
import 'package:pc/pages/Report/ReportPage.dart';
import 'workflow/AllPC.dart';
import 'workflow/delivered.dart';
import 'workflow/donepage.dart';
import 'workflow/pending.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[50],
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => allPc(),
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.blue,
                              offset: Offset(4.5, 4.0),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text('All PC',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DonePage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.green,
                              offset: Offset(4.5, 4.0),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text('Done',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PendingPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.red,
                              offset: Offset(4.5, 4.0),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text('Pendding',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Delivered(),
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                -2.0,
                                -2.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.purple,
                              offset: Offset(4.5, 4.0),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text('Delivered',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 465,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.blue, width: 5),),
                  child: const Scaffold(
                    backgroundColor: Colors.transparent,
                    body: ReportPage(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
