import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class Calculated extends StatelessWidget {
  bool toggle;
  double age;
  DateTime time;
  Calculated({
    super.key,
    required this.age,
    required this.toggle,
    required this.time,
  });

  String calculate(int cycle) {
    if (!toggle) {
      return DateFormat('HH:mm').format(
        time.subtract(
          Duration(minutes: 90 * cycle + 15),
        ),
      );
    } else {
      return DateFormat('HH:mm').format(
        time.add(
          Duration(minutes: 90 * cycle + 15),
        ),
      );
    }
  }

  Column calculate2() {
    var list = <Container>[];
    var cycles = [6, 5, 4, 3];
    for (var i = 0; i < 4; i++) {
      var element = Container(
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 75,
        width: 300,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(24, 0, 0, 0),
                Color.fromARGB(255, 14, 14, 14),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    calculate(cycles[i]),
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    i < 2 ? "Suggested" : "",
                    style: const TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "${cycles[i] * 90 / 60} hrs of sleep, ${cycles[i]} sleep cycles")
          ],
        ),
      );
      list.add(element);
    }
    return Column(
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Text(
                "Sleep Calculator",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "To ${!toggle ? 'wake up' : 'go to bed'} at ${DateFormat('HH:mm').format(time)}, you should wake up at:"),
              SizedBox(width: 300, child: calculate2()),
              const Text("""
        If you wake up at one of these times, you shouldn't wake up in the middle of a sleep cycle. Because sleep cycles and recommended sleep times vary by age, we took that into account when approximating the best times for you. 
        
        The average person takes 15 minutes to fall asleep. We included that time when calculating your result. 
        """),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text("Calculate Again"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
