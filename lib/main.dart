import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_hello/ui/hello.dart';

void main() {
  runApp(SimpleHelloApp());
}

class SimpleHelloApp extends StatefulWidget {
  SimpleHelloApp({Key key}) : super(key: key);

  @override
  _SimpleHelloAppState createState() => _SimpleHelloAppState();
}

class _SimpleHelloAppState extends State<SimpleHelloApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HelloScreen(),
    );
  }
}
