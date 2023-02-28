import 'package:deep_flutter/custom_time_picker.dart';
import 'package:flutter/material.dart';
import 'custom_slider.dart';
import 'custom_toggle.dart';
import 'calculated.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int age = 18;
    bool toggle = false;
    String time = "00:00 AM";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Sleep Calculator",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Select Your Age",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CustomSlider(),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("1"),
                      Text("65+"),
                    ],
                  ),
                ),
              ],
            ),
            const CustomToggle(),
            const CustomTimePicker(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text("Calculate"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Calculated(
                                age: age,
                                toggle: toggle,
                                time: time,
                              )));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
