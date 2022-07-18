import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeToggle extends StatefulWidget {
  const AgeToggle({Key? key}) : super(key: key);

  @override
  State<AgeToggle> createState() => _AgeToggleState();
}

class _AgeToggleState extends State<AgeToggle> {
  List<String> selectedCategory = <String>[];

  String category1 = 'category 1';
  String category2 = 'category 2';
  String category3 = 'category 3';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.blue[100],
          onTap: () {
            selectedCategory = <String>[];
            selectedCategory.add(category1);
            setState(() {});
          },
          child: Container(
            width: 351,
            height: 60,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "< 18",
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                  color: selectedCategory.contains(category1)
                      ? Color.fromRGBO(255, 178, 0, 1.0)
                      : Color.fromRGBO(91, 94, 117, 1.0),
                  width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          splashColor: Colors.blue[100],
          onTap: () {
            selectedCategory = <String>[];
            selectedCategory.add(category2);
            setState(() {});
          },
          child: Container(
            width: 351,
            height: 60,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "18 - 22",
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                  color: selectedCategory.contains(category2)
                      ? Color.fromRGBO(255, 178, 0, 1.0)
                      : Color.fromRGBO(91, 94, 117, 1.0),
                  width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          splashColor: Colors.blue[100],
          onTap: () {
            selectedCategory = <String>[];
            selectedCategory.add(category3);
            setState(() {});
          },
          child: Container(
            width: 351,
            height: 60,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "> 22",
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                  color: selectedCategory.contains(category3)
                      ? Color.fromRGBO(255, 178, 0, 1.0)
                      : Color.fromRGBO(91, 94, 117, 1.0),
                  width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
