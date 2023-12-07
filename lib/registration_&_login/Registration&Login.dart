import 'package:flutter/material.dart';

class RegistrationAndLogin extends StatefulWidget {
  const RegistrationAndLogin({super.key});

  @override
  State<RegistrationAndLogin> createState() => _RegistrationAndLoginState();
}

class _RegistrationAndLoginState extends State<RegistrationAndLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/onboard_images/Order Success.png",
              alignment: Alignment.center),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 10.0,
          ),
          const Text(
            "Before enjoying Foodmedia services\n Please register first",
            style: TextStyle(
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
