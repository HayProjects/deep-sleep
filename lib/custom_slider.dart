import 'package:flutter/material.dart';

class SliderGet {
  static double sliderValue = 0;

  void setSliderValue(value) {
    sliderValue = value;
  }

  double getSliderValue() {
    return sliderValue;
  }
}

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var slider = SliderGet();
  double _currentSliderValue = 18;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _currentSliderValue.round() == 65
              ? "${_currentSliderValue.round()}+ Years Old"
              : "${_currentSliderValue.round()} Years Old",
        ),
        Slider(
          value: _currentSliderValue,
          min: 1,
          max: 65,
          divisions: 65,
          label: _currentSliderValue.round() == 65
              ? "${_currentSliderValue.round()}+ Years Old"
              : "${_currentSliderValue.round()} Years Old",
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
              slider.setSliderValue(value);
            });
          },
        ),
      ],
    );
  }
}
