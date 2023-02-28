import 'package:flutter/material.dart';

class Calculated extends StatelessWidget {
  const Calculated({
    super.key,
    required age,
    required toggle,
    required time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back")),
            const Text('Sleep Calculator'),
            const Text("Your Result"),
            const Text("To go to bed at 8:00 AM, you should wake up at:"),
            Container(),
            const Text("""
      If you wake up at one of these times, you shouldn't wake up in the middle of a sleep cycle. Because sleep cycles and recommended sleep times vary by age, we took that into account when approximating the best times for you. 
      
      The average person takes 15 minutes to fall asleep. We included that time when calculating your result. 
      """),
          ],
        ),
      ),
    );
  }
}
