import 'package:flutter/material.dart';
import 'package:login_app/constants.dart';
import 'package:login_app/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.grey,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
              display1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(
                color: kPrimaryColor,
              ),
              headline: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
            ),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
          )))),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/person.jpg"),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Baking Lessons\n",
                          style: TextStyle(fontSize: 30),
                      ),
                      TextSpan(
                        text: "Master the Art of Baking",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SignInScreen();
                            },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: kPrimaryColor),
                          child: Row(
                            children: [
                              Text(
                                "Start Learning",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
