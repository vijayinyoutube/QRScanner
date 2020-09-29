import 'package:flutter/material.dart';

import 'QR Generator/QRGenerator.dart';
import 'QR Scanner/ScanQR.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("QR Scan/Generate"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "images/QR.jpg",
                ),
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                radius: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: "Scan QR",
                    child: Container(
                      width: ((MediaQuery.of(context).size.width) / 2) - 45,
                      height: 50,
                      child: OutlineButton(
                        focusColor: Colors.red,
                        highlightColor: Colors.blue,
                        hoverColor: Colors.lightBlue[100],
                        splashColor: Colors.blue,
                        borderSide: BorderSide(
                          width: 5,
                          color: Colors.blue,
                        ),
                        shape: StadiumBorder(),
                        child: Text(
                          "Scan QR",
                          style: TextStyle(fontSize: 17),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScanQR()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Hero(
                    tag: "Generete QR",
                    child: Container(
                      width: ((MediaQuery.of(context).size.width) / 2) - 45,
                      height: 50,
                      child: OutlineButton(
                        focusColor: Colors.red,
                        highlightColor: Colors.blue,
                        hoverColor: Colors.lightBlue[100],
                        splashColor: Colors.blue,
                        borderSide: BorderSide(
                          width: 5,
                          color: Colors.blue,
                        ),
                        shape: StadiumBorder(),
                        child: Text(
                          "Generate QR",
                          style: TextStyle(fontSize: 17),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QRGenerator()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
