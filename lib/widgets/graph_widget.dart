import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motiva8/widgets/barchart_widget.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  List<String> selectedCategory = <String>['category 1'];

  String category1 = 'category 1';
  String category2 = 'category 2';
  String category3 = 'category 3';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            splashColor: Colors.blue[100],
            onTap: () {
              selectedCategory = <String>[];
              selectedCategory.add(category1);
              setState(() {});
            },
            child: Container(
              width: 103,
              height: 45,
              child: Center(
                child: Text(
                  "Today",
                  style: GoogleFonts.rubik(
                    color: Color.fromRGBO(9, 12, 48, 1.0),
                    fontSize: 14,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: selectedCategory.contains(category1)
                    ? Color.fromRGBO(255, 178, 0, 1.0)
                    : Color.fromRGBO(91, 94, 117, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            splashColor: Colors.blue[100],
            onTap: () {
              selectedCategory = <String>[];
              selectedCategory.add(category2);
              setState(() {});
            },
            child: Container(
              width: 103,
              height: 45,
              child: Center(
                child: Text(
                  "This week",
                  style: GoogleFonts.rubik(
                    color: Color.fromRGBO(9, 12, 48, 1.0),
                    fontSize: 14,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: selectedCategory.contains(category2)
                    ? Color.fromRGBO(255, 178, 0, 1.0)
                    : Color.fromRGBO(91, 94, 117, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            splashColor: Color.fromRGBO(255, 178, 0, 1.0),
            onTap: () {
              selectedCategory = <String>[];
              selectedCategory.add(category3);
              setState(() {});
            },
            child: Container(
              width: 103,
              height: 45,
              child: Center(
                child: Text(
                  "This month",
                  style: GoogleFonts.rubik(
                    color: Color.fromRGBO(9, 12, 48, 1.0),
                    fontSize: 14,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: selectedCategory.contains(category3)
                    ? Color.fromRGBO(255, 178, 0, 1.0)
                    : Color.fromRGBO(91, 94, 117, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ],
      ),
      Barchart()
    ]);
  }
}
