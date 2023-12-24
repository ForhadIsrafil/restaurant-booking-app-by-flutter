import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RegistrationAndLogin extends StatefulWidget {
  const RegistrationAndLogin({super.key});

  @override
  State<RegistrationAndLogin> createState() => _RegistrationAndLoginState();
}

class _RegistrationAndLoginState extends State<RegistrationAndLogin>
    with SingleTickerProviderStateMixin {
  // void _launchURL() async {
  //   Uri _url = Uri.parse('https://www.google.com');
  //   if (await launchUrl(_url)) {
  //     await launchUrl(_url);
  //   } else {
  //     throw 'Could not launch $_url';
  //   }
  // }
  late final TabController _controller = TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
            style: TextStyle(fontSize: 25.0),
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
                        _buildPopupDialog(context, _controller));
                // showDataAlert();
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

Widget _buildPopupDialog(BuildContext context, TabController controller) {
  return AlertDialog(
    scrollable: false,
    insetPadding: const EdgeInsets.only(top: 190.0),
    backgroundColor: Colors.white,
    icon: const Icon(
      Icons.remove,
      size: 50,
      color: Colors.grey,
    ),
    iconPadding: EdgeInsets.zero,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35.0),
        topRight: Radius.circular(35.0),
      ),
    ),
    // contentPadding: const EdgeInsets.only(
    //   top: 2.0,
    // ),
    content: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TabBar(
              controller: controller,
              indicatorColor: const Color(0xff32B768),
              labelColor: const Color(0xff32B768),
              unselectedLabelColor: const Color(0xff89909E),
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: Color(0xff32B768)),
                insets: EdgeInsets.symmetric(horizontal: 5),
              ),
              tabs: const [
                Tab(
                  text: "Create Account",
                ),
                Tab(text: "Login")
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 600,
                child: TabBarView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        const ListTile(
                            title: Text(
                          "Full Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        const TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Enter your full name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xff89909E))),
                          ),
                          // onSubmitted: ,
                        ),
                        const ListTile(
                            title: Text(
                          "Email Address",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        const TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Eg namaemail@emailkamu.com",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xff89909E))),
                          ),
                          // onSubmitted: ,
                        ),
                        const ListTile(
                            title: Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        const TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "**** **** ****",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xff89909E))),
                          ),
                          // onSubmitted: ,
                        ),
                        const SizedBox(
                          width: double.infinity,
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 49,
                          width: 256,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF4F4F4),
                                textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Text(
                              "Registration",
                              style: TextStyle(color: Color(0xff9CA3AF)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 49,
                          width: 256,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF4F4F4),
                                textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            icon: Image.asset(
                                "images/login_registration/ic_google.png"),
                            label: const Text(
                              "    Sign up with Google",
                              style: TextStyle(color: Color(0xff222222)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ============ LOGIN ===========
                    Column(
                      children: [
                        const ListTile(
                            title: Text(
                              "Email Address",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        const TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Eg namaemail@emailkamu.com",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide:
                                BorderSide(color: Color(0xff89909E))),
                          ),
                          // onSubmitted: ,
                        ),
                        const ListTile(
                            title: Text(
                              "Password",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        const TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "**** **** ****",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide:
                                BorderSide(color: Color(0xff89909E))),
                          ),
                          // onSubmitted: ,
                        ),
                        const SizedBox(
                          width: double.infinity,
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 49,
                          width: 256,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF4F4F4),
                                textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Color(0xff9CA3AF)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 49,
                          width: 256,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF4F4F4),
                                textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            icon: Image.asset(
                                "images/login_registration/ic_google.png"),
                            label: const Text(
                              "    Login with Google",
                              style: TextStyle(color: Color(0xff222222)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
