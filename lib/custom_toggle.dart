import 'package:flutter/material.dart';

class ToggleGet {
  static bool toggleValue = false;

  void setToggleValue(value) {
    toggleValue = value;
  }

  bool getToggleValue() {
    return toggleValue;
  }
}

class CustomToggle extends StatefulWidget {
  const CustomToggle({super.key});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  var toggle = ToggleGet();
  var isEnabled = false;
  var textColor = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black45,
        border: Border.all(color: Colors.black12, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 25,
          ),
        ],
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            alignment: isEnabled ? Alignment.centerRight : Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isEnabled = false;
                      toggle.setToggleValue(isEnabled);
                    });
                  },
                  child: AnimatedDefaultTextStyle(
                    style: TextStyle(
                      color: isEnabled
                          ? const Color.fromARGB(255, 201, 201, 201)
                          : Colors.white,
                    ),
                    duration: const Duration(milliseconds: 200),
                    child: const Text(
                      "I want\nto wake up at",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isEnabled = true;
                      toggle.setToggleValue(isEnabled);
                    });
                  },
                  child: AnimatedDefaultTextStyle(
                    style: TextStyle(
                      color: isEnabled
                          ? Colors.white
                          : const Color.fromARGB(255, 201, 201, 201),
                    ),
                    duration: const Duration(milliseconds: 200),
                    child: const Text(
                      "I want\nto go to bed at",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
