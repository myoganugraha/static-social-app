import 'package:flutter/material.dart';
import 'package:simple_hello/navigation_animation.dart';
import 'package:simple_hello/ui/profile.dart';

class Hello2Screen extends StatelessWidget {
  const Hello2Screen({Key key}) : super(key: key);

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
              GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blueAccent,
                        ),
                        Hero(
                          tag: 'my-profile-tag',
                          child: Material(
                            type: MaterialType.transparency,
                            child: Text(
                              'My Profile',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.blueAccent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              Expanded(
                child: Center(
                  child: Text(
                    'Hello World!',
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
