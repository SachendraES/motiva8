import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Column(
      children: [
        Container(
          width: width,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 15.0,
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: Color.fromRGBO(255, 178, 0, 1.0),
              inactiveTrackColor: Color.fromRGBO(91, 94, 117, 1.0),
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 14.0,
                pressedElevation: 8.0,
              ),
              thumbColor: Color.fromRGBO(255, 178, 0, 1.0),
              overlayColor: Color.fromRGBO(255, 178, 0, 1.0).withOpacity(.2),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 32.0),
            ),
            child: Slider(
              min: 0.0,
              max: 100.0,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            width: width,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0%",
                    style: GoogleFonts.rubik(
                        color: _value < 1
                            ? Color.fromRGBO(91, 94, 117, 1.0)
                            : Color.fromRGBO(255, 178, 0, 1.0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "25%",
                    style: GoogleFonts.rubik(
                        color: _value < 25
                            ? Color.fromRGBO(91, 94, 117, 1.0)
                            : Color.fromRGBO(255, 178, 0, 1.0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "50%",
                    style: GoogleFonts.rubik(
                        color: _value < 50
                            ? Color.fromRGBO(91, 94, 117, 1.0)
                            : Color.fromRGBO(255, 178, 0, 1.0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "75%",
                    style: GoogleFonts.rubik(
                        color: _value < 75
                            ? Color.fromRGBO(91, 94, 117, 1.0)
                            : Color.fromRGBO(255, 178, 0, 1.0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "100%",
                    style: GoogleFonts.rubik(
                        color: _value < 100
                            ? Color.fromRGBO(91, 94, 117, 1.0)
                            : Color.fromRGBO(255, 178, 0, 1.0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
