import 'package:flutter/material.dart';

import 'GeneratedQR.dart';

class QRGenerator extends StatefulWidget {
  QRGenerator({Key key}) : super(key: key);

  @override
  _QRGeneratorState createState() => _QRGeneratorState();
}

TextEditingController mycontroller = new TextEditingController();

class _QRGeneratorState extends State<QRGenerator> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        mycontroller.text = "";
        return new Future.value(true);
      },
      child: Hero(
        tag: "Generete QR",
        child: Scaffold(
          appBar: AppBar(
            title: Text("QR Generator"),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("QR Generator"),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: mycontroller,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
                      labelText: "Enter the data for generating a QR",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                      prefixIcon: Icon(
                        Icons.link,
                      ),
                    ),
                    onEditingComplete: navigate,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigate() {
    print(mycontroller.text);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => GeneratedQR(mycontroller.text)));
  }
}
