import 'package:flutter/material.dart';
import 'spinner.dart';

var selectedTime = DateTime(1, 1, 1, 1);

class TimePickerGet {
  static DateTime timeValue = DateTime(1, 1, 1, 1);

  void setTimePicker(value) {
    timeValue = value;
  }

  DateTime getTimePicker() {
    return timeValue;
  }
}

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  var time = TimePickerGet();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterSpinner(
              color: Colors.black87,
              fontSize: 26,
              is24Hour: true,
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
                  time.setTimePicker(selectedTime);
                });
              },
              spacing: 10,
            )
          ],
        ),
      ),
    );
  }
}
