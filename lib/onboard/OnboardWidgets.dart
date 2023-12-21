import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/registration_&_login/Registration&Login.dart';
import 'utils/PageSelectorPages.dart';
import 'package:get/get.dart';

class OnboardPages extends StatefulWidget {
  const OnboardPages({super.key});

  @override
  State<OnboardPages> createState() => _OnboardPagesState();
}

class _OnboardPagesState extends State<OnboardPages>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;
  late int _index = 0;
  String _skip = "Skip";
  bool _enableButton = true;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
        length: widgets.length, initialIndex: _index, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      // alignment: Alignment.center,
      children: [
        TabBarView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: widgets,
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                focusNode: FocusNode(canRequestFocus: false),
                onPressed: _enableButton
                    ? () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (context) => const RegistrationAndLogin()),
                        // );
                        setState(() {
                          _index = _controller.length - 1;
                          _controller.animateTo(_index);
                          _skip = '';
                          _enableButton = false;
                        });
                      }
                    : null,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                child: Text(
                  _skip,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              // const SizedBox(width: 50,),
              TabPageSelector(
                controller: _controller,
                color: Colors.black12,
                selectedColor: Colors.green,
                borderStyle: BorderStyle.none,
              ),
              IconButton(
                iconSize: 40,
                onPressed: () {
                  setState(() {
                    if (_index != _controller.length - 1) {
                      _index++;
                      _controller.animateTo(_index);
                      if (_index == _controller.length - 1) {
                        _skip = '';
                        _enableButton = false;
                      }
                    } else {
                      Get.to(const RegistrationAndLogin());
                    }
                  });
                },
                icon: const Icon(Icons.arrow_right_alt),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
