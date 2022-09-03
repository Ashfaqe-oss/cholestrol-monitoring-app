import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Counsellor_View.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/View_Values.dart';

class Habits_View extends StatefulWidget {
  const Habits_View({Key? key}) : super(key: key);

  @override
  _Habits_ViewState createState() => _Habits_ViewState();
}

class _Habits_ViewState extends State<Habits_View> {
  bool load = true;
  void loaddata() async {
    CounsView.Habit = [];
    Counsellor_View Get = new Counsellor_View();
    await Get.GetHabit();
    setState(() {
      if (CounsView.Habit[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4A64FE),
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Habits",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: load == false
            ? SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CounsellorCards(
                          "Sleep Duration at Night",
                          CounsView.Habit[0]["DOC1"].toString(),
                          1,
                          "DOC1",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Last Activity Before Bed Time",
                          CounsView.Habit[0]["DOC2"].toString(),
                          2,
                          "DOC2",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Day Time Sleepiness",
                          CounsView.Habit[0]["DOC3"].toString(),
                          3,
                          "DOC3",
                          "DROP2"),
                      CounsellorCards(
                          "Do you take medication to sleep?",
                          CounsView.Habit[0]["DOC4"].toString(),
                          4,
                          "DOC4",
                          "DROP2"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Screen Time (Total Hrs/Day)",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CounsellorCards(
                          "Mobile",
                          CounsView.Habit[0]["DOC5"].toString(),
                          5,
                          "DOC5",
                          "HABITTEXT"),
                      CounsellorCards(
                          "TV",
                          CounsView.Habit[0]["DOC6"].toString(),
                          6,
                          "DOC6",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Laptop",
                          CounsView.Habit[0]["DOC7"].toString(),
                          7,
                          "DOC7",
                          "HABITTEXT"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "When Last Used?",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CounsellorCards(
                          "Mobile",
                          CounsView.Habit[0]["DOC8"].toString(),
                          8,
                          "DOC8",
                          "HABITTEXT"),
                      CounsellorCards(
                          "TV",
                          CounsView.Habit[0]["DOC9"].toString(),
                          9,
                          "DOC9",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Laptop",
                          CounsView.Habit[0]["DOC10"].toString(),
                          10,
                          "DOC10",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Bowel Habits Frequency",
                          CounsView.Habit[0]["DOC11"].toString(),
                          11,
                          "DOC11",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Bowel Habits Descriptions",
                          CounsView.Habit[0]["DOC12"].toString(),
                          12,
                          "DOC12",
                          "HABITTEXT"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Difficulty",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CounsellorCards(
                          "Day Time Sleepiness",
                          CounsView.Habit[0]["DOC13"].toString(),
                          13,
                          "DOC13",
                          "DROP2"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Eating Habits - Approx Time Taken To Eat",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CounsellorCards(
                          "Breakfast",
                          CounsView.Habit[0]["DOC14"].toString(),
                          14,
                          "DOC14",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Lunch",
                          CounsView.Habit[0]["DOC15"].toString(),
                          15,
                          "DOC15",
                          "HABITTEXT"),
                      CounsellorCards(
                          "Dinner",
                          CounsView.Habit[0]["DOC16"].toString(),
                          16,
                          "DOC16",
                          "HABITTEXT"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Eating Habits - Approx Time Taken To Eat",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CounsellorCards(
                          "Do you watch TV/Mobile while eating",
                          CounsView.Habit[0]["DOC17"].toString(),
                          17,
                          "DOC17",
                          "DROP2"),
                    ]),
              )
            : Container(),
      ),
    );
  }
}
