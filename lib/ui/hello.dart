import 'package:flutter/material.dart';
import 'package:simple_hello/navigation_animation.dart';
import 'package:simple_hello/ui/profile.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(createRoute(ProfileScreen()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Hero(
                tag: 'hello-tag',
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    'Hello,',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
