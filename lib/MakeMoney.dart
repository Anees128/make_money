import 'package:flutter/material.dart';

class MakeMoney extends StatefulWidget {
  @override
  _MakeMoney createState() => _MakeMoney();
}

class _MakeMoney extends State<MakeMoney> {
  int moneycounter = 0;
  void makemoney() {
    setState(() {
      moneycounter = moneycounter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Make Money",
            style: TextStyle(),
          ),
          backgroundColor: Colors.lightGreen.shade900,
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Current Account",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Value is \$$moneycounter",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: FlatButton(
                      color: Colors.green.shade900,
                      onPressed: makemoney,
                      child: Text(
                        "Lets Begin!",
                        style: TextStyle(
                          fontSize: 19.9,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
