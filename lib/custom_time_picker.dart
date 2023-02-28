import 'package:flutter/material.dart';
import 'spinner.dart';

DateTime selectedTime = DateTime(1, 1, 1, 1);

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: FlutterSpinner(
                color: Colors.black87,
                fontSize: 26,
                is24Hour: false,
                selectedFontColor: Colors.red,
                unselectedFontColor: Colors.grey.withOpacity(0.4),
                height: 310,
                width: 200,
                itemHeight: 10,
                itemWidth: 50,
                padding: 20,
                selectedDate: DateTime.now(),
                onTimeChange: (date) {
                  setState(() {
                    selectedTime = date;
                  });
                },
                spacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
