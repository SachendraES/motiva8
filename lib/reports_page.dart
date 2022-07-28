import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motiva8/log_page.dart';
import 'package:motiva8/widgets/graph_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 12, 48, 1.0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Track your energy level",
                style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Recording your emotional energy level",
                style: GoogleFonts.rubik(
                    color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 15),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "will help you to manage your energy levels",
                style: GoogleFonts.rubik(
                    color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 15),
              ),
              SizedBox(
                height: 40,
              ),
              CircularPercentIndicator(
                radius: 115.0,
                lineWidth: 19.0,
                percent: 0.75,
                center: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      new Text(
                        "75%",
                        style: GoogleFonts.rubik(
                            color: Color.fromRGBO(255, 178, 0, 1.0),
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Text(
                        "Your Avg Energy",
                        style: GoogleFonts.rubik(
                          color: Color.fromRGBO(156, 158, 182, 1.0),
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      new Text(
                        "Today",
                        style: GoogleFonts.rubik(
                            color: Color.fromRGBO(255, 178, 0, 1.0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Color.fromRGBO(255, 178, 0, 1.0),
                backgroundColor: Color.fromRGBO(91, 94, 117, 1.0),
              ),
              SizedBox(
                height: 40,
              ),
              GraphWidget(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogPage()),
                  );
                },
                child: Container(
                  width: 351,
                  height: 52,
                  child: Center(
                    child: Text(
                      "+  ENTER ENERGY LOG",
                      style: GoogleFonts.rubik(
                          color: Color.fromRGBO(255, 178, 0, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(255, 178, 0, 1.0), width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
