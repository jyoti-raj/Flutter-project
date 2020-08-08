import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(X());

class X extends StatelessWidget {
  TextEditingController myController1 = new TextEditingController();
  TextEditingController myController2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Feild'),
        ),
        backgroundColor: Colors.grey.shade400,
        body: Center(
            child: Container(
          width: 350,
          height: 250,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TextField(
                controller: myController1,
                decoration: InputDecoration(hintText: 'OS name'),
                autocorrect: true,
              ),
              TextField(
                controller: myController2,
                decoration: InputDecoration(hintText: 'Enter image name'),
                autocorrect: true,
              ),
              FlatButton(
                onPressed: () {
                  print(myController1.text);
                  print(myController2.text);
                },
                child: Text('Submit'),
                color: Colors.blue,
              )
            ],
          ),
        )),
      ),
    );
  }
}
