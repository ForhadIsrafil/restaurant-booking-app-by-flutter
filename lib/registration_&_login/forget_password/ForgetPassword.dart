import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:restaurant_booking_app/registration_&_login/Registration&Login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const ListTile(
              title: Text(
                "Forget Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Enter your registered email below",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 25),
            const ListTile(
                title: Text(
              "Email Address",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            const TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "forhad@gmail.com",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(color: Color(0xff89909E))),
              ),
              // onSubmitted: ,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 7.0, bottom: 10.0, right: 5),
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: "Remember the password? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: "Sign In",
                      // textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Color(0xff32B768),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(const RegistrationAndLogin()),
                    ),
                  ]),
                ),
              ),
            ),
            // const SizedBox(height: 200),
            // SizedBox(
            //   height: 49,
            //   width: 256,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: const Color(0xff32B768),
            //         textStyle: const TextStyle(
            //             fontSize: 14.0, fontWeight: FontWeight.bold),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12),
            //         )),
            //     child: const Text(
            //       "Submit",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: SizedBox(
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
              "Submit",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
