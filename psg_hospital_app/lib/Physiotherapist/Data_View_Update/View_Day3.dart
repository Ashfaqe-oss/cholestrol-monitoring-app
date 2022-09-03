import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class Day3_View extends StatefulWidget {
  const Day3_View({Key? key}) : super(key: key);

  @override
  _Day3_ViewState createState() => _Day3_ViewState();
}

class _Day3_ViewState extends State<Day3_View> {
  List<String> Exs2 = [
    "Hip Circling",
    "Trunk Circles",
    "Trunk Twist with Single arm swing",
    "Walking for 2.5 Minutes (90 - 120 Meters)"
  ];
  List<String> Exs1 = [
    "Knee Bending",
    "Double Arm Raise",
    "Lateral Trunk Bends",
    "Walking for 2.5 Minutes (90-120 Meters)"
  ];

  List<String> HeartSession = [
    "Heart Rate",
    "SPO2",
    "Blood Pressure",
    "Borg's Scale",
    "MET's"
  ];
  bool load = true;
  void loaddata() async {
    PhysioView.Day3 = [];
    Physio_View Get = new Physio_View();
    await Get.GetDay3();
    setState(() {
      if (PhysioView.Day3[0].length < 2) {
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
            "Day 3",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: load == false
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "DAY 3",
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
                        PhysioCards(
                            "Date",
                            PhysioView.Day3[0]["DOC1"][0].toString(),
                            0,
                            "DOC1",
                            "DAY3DATE"),
                        PhysioCards(
                            "Therapist Name",
                            PhysioView.Day3[0]["DOC2"][0].toString(),
                            0,
                            "DOC2",
                            "DAY3TEXT"),
                        PhysioCards(
                            "Designation",
                            PhysioView.Day3[0]["DOC3"][0].toString(),
                            0,
                            "DOC3",
                            "DAY3TEXT"),
                        PhysioCards(
                            "Size of Infarct",
                            PhysioView.Day3[0]["DOC4"][0].toString(),
                            0,
                            "DOC4",
                            "DAY3BOX"),
                        PhysioCards(
                            "Need of gradual resumption of activities",
                            PhysioView.Day3[0]["DOC5"][0].toString(),
                            0,
                            "DOC5",
                            "DAY3BOX"),
                        PhysioCards(
                            "Impact of exercise on reducing risk factors",
                            PhysioView.Day3[0]["DOC6"][0].toString(),
                            0,
                            "DOC6",
                            "DAY3BOX"),
                        PhysioCards(
                            "Teach using Borg's Scale for rating of preceived excertions",
                            PhysioView.Day3[0]["DOC7"][0].toString(),
                            0,
                            "DOC7",
                            "DAY3BOX"),
                        PhysioCards(
                            "Given To",
                            PhysioView.Day3[0]["DOC8"][0].toString(),
                            0,
                            "DOC8",
                            "DROP5"),
                        PhysioCards(
                            "Name",
                            PhysioView.Day3[0]["DOC9"][0].toString(),
                            0,
                            "DOC9",
                            "DAY3TEXT"),
                        PhysioCards(
                            "Time",
                            PhysioView.Day3[0]["DOC10"][0].toString(),
                            0,
                            "DOC10",
                            "DAY3TEXT"),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day3[0]["DOC11"][0].toString(),
                            0,
                            "DOC11",
                            "DAY3TEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Exercise - Standing On A Firm Surface SESSION - 1",
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
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: List.generate(
                              Exs1.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      Exs1[index],
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 12).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 12).toString(),
                                      "DAY3BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 12).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 12).toString(),
                                      "DAY3TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Exercise - Standing On A Firm Surface SESSION - 2",
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
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: List.generate(
                              Exs1.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      Exs1[index],
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 16).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 16).toString(),
                                      "DAY3BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 16).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 16).toString(),
                                      "DAY3TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "SESSION 1",
                                style: GoogleFonts.lato(
                                  color: Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: List.generate(
                              HeartSession.length,
                              (index) => Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          HeartSession[index],
                                          style: GoogleFonts.lato(
                                            color: Color(0xff4A64FE),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  PhysioCards(
                                      "REST",
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 20).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 20).toString(),
                                      "DAY3TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 20).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 20).toString(),
                                      "DAY3TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day3[0]["DOC25".toString()][0]
                                .toString(),
                            0,
                            "DOC25",
                            "DAY3TEXT"),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "SESSION 2",
                                style: GoogleFonts.lato(
                                  color: Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: List.generate(
                              HeartSession.length,
                              (index) => Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          HeartSession[index],
                                          style: GoogleFonts.lato(
                                            color: Color(0xff4A64FE),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  PhysioCards(
                                      "REST",
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 26).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 26).toString(),
                                      "DAY3TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day3[0]
                                              ["DOC" + (index + 26).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 26).toString(),
                                      "DAY3TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day3[0]["DOC31".toString()][0]
                                .toString(),
                            0,
                            "DOC31",
                            "DAY3TEXT"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
