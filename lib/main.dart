import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Myapp(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    ));

String result = "";
String scanned = "none";

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("static/banner.png"), fit: BoxFit.cover)),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              "eQzine",
              style: TextStyle(
                fontSize: 72,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            "static/title.png",
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.0),
            child: roundbutton(() {}, "Login", context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.0),
            child: Text(
              "Powered By: DataRitz Technologies",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          )
        ]),
      ),
    );
  }
}

Widget roundbutton(func, String text, BuildContext context) {
  return MaterialButton(
    minWidth: double.infinity,
    height: 60,
    onPressed: () {},
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(50)),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
    ),
  );
}
