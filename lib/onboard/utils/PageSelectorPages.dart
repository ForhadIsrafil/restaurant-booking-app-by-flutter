import 'package:flutter/material.dart';

List<Widget> widgets = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset("images/onboard_images/Tracking & Maps.png",
          alignment: Alignment.center),
      const Padding(padding: EdgeInsets.only(top: 90)),
      const Text(
        "Nearby restaurants",
        style: TextStyle(
          fontSize: 25.0,
        ),
      ),
      const SizedBox(
        width: double.infinity,
        height: 10.0,
      ),
      const Text(
        "You don't have to go far to find a good restaurant,\nwe have provided all the restaurants that is \nnear you",
        style: TextStyle(
          fontSize: 12.0,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset("images/onboard_images/Order illustration.png",
          alignment: Alignment.center),
      const Padding(padding: EdgeInsets.only(top: 20)),
      const Text(
        "Select the Favorites Menu",
        style: TextStyle(
          fontSize: 25.0,
        ),
      ),
      const SizedBox(
        width: double.infinity,
        height: 10.0,
      ),
      const Text(
        "Now eat well, don't leave the house,You can\n choose your favorite food only with\n one click",
        style: TextStyle(
          fontSize: 12.0,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset("images/onboard_images/Safe Food.png",
          alignment: Alignment.center),
      const Padding(padding: EdgeInsets.only(top: 20)),
      const Text(
        "Good food at a cheap price",
        style: TextStyle(
          fontSize: 25.0,
        ),
      ),
      const SizedBox(
        width: double.infinity,
        height: 10.0,
      ),
      const Text(
        "You can eat at expensive restaurants with\n affordable price",
        style: TextStyle(
          fontSize: 12.0,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  ),
];
