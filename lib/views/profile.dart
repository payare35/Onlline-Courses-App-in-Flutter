import 'package:courses_app_ui/constants/constants.dart';
import 'package:courses_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Hero(
                tag: "profilePic",
                child: Image.asset(
                  "assets/images/my_profile_pic.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black38,
              Colors.black38,
              Colors.white,
            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
          ),
          SafeArea(
              child: Container(
            padding: EdgeInsets.only(left: 20.0, top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Prathamesh Ayare",
                  style: kHeadingextStyle.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                    "Life is very Hard\nBut you got to be more harder\nNot to Fight Against It\nBut to Understand It.",
                    style: kSubtitleTextSyule.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 150.0,
                ),
                profilePic(Icons.phone_android, "Flutter Developer"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
