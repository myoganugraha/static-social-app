import 'package:flutter/material.dart';
import 'package:simple_hello/navigation_animation.dart';
import 'package:simple_hello/ui/hello2.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                          tag: 'hello-tag',
                          child: Material(
                            type: MaterialType.transparency,
                            child: Text(
                              'Hello,',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.blueAccent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(createRoute(Hello2Screen()));
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
                tag: 'my-profile-tag',
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    'My Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffAE1F5E),
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text('M. Yoga Nugraha',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Kang Type',
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Text('London, Yu Ke',
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            profileInsight('Photos', '7'),
                            profileInsight('Followers', '300'),
                            profileInsight('Following', '10')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget profileInsight(String title, String value) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w800
            )),
        Text(value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800
            ))
      ],
    );
  }
}
