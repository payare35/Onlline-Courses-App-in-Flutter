import 'package:courses_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

Widget profilePic(IconData icon, String label) {
  return Row(
    children: <Widget>[
      Icon(
        icon,
        color: Colors.white,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        label,
        style:
            kSubheadingextStyle.copyWith(color: Colors.white, fontSize: 15.0),
      )
    ],
  );
}
