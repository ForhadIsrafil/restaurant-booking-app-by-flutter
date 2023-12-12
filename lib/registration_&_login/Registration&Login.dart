import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RegistrationAndLogin extends StatefulWidget {
  const RegistrationAndLogin({super.key});

  @override
  State<RegistrationAndLogin> createState() => _RegistrationAndLoginState();
}

class _RegistrationAndLoginState extends State<RegistrationAndLogin> {
  // void _launchURL() async {
  //   Uri _url = Uri.parse('https://www.google.com');
  //   if (await launchUrl(_url)) {
  //     await launchUrl(_url);
  //   } else {
  //     throw 'Could not launch $_url';
  //   }
  // }

  showDataAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            contentPadding: EdgeInsets.only(
              top: 10.0,
            ),
            title: Text(
              "Create ID",
              style: TextStyle(fontSize: 24.0),
            ),
            content: Container(
              height: 400,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Mension Your ID ",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Id here',
                            labelText: 'ID'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          // fixedSize: Size(250, 50),
                        ),
                        child: Text(
                          "Submit",
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Note'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

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
          const SizedBox(
            width: double.infinity,
            height: 50.0,
          ),
          SizedBox(
            height: 49,
            width: 256,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff32B768),
                  textStyle: const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              child: const Text(
                "Create Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 10.0,
          ),
          SizedBox(
            height: 49,
            width: 256,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD1FAE5),
                  textStyle: const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              child: const Text(
                "Login",
                style: TextStyle(color: Color(0xff10B981)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              const TextSpan(
                  text: "By logging in or registering, you have agreed to ",
                  style: TextStyle(color: Colors.black, fontSize: 10)),
              TextSpan(
                text: "the Terms and\n Conditions",
                style: const TextStyle(color: Color(0xff32B768), fontSize: 10),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrlString("https://www.google.com"),
              ),
              const TextSpan(
                  text: " And ",
                  style: TextStyle(color: Colors.black, fontSize: 10)),
              TextSpan(
                text: "Privacy Policy",
                style: const TextStyle(color: Color(0xff32B768), fontSize: 10),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrlString("https://www.google.com"),
              ),
              const TextSpan(
                  text: ".",
                  style: TextStyle(color: Colors.black, fontSize: 10)),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text("example"),
    content: const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("hi there")],
    ),
    actions: [TextButton(onPressed: () {}, child: const Text("ok"))],
  );
}
