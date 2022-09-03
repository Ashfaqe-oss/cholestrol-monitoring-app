import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class Day5_View extends StatefulWidget {
  const Day5_View({Key? key}) : super(key: key);

  @override
  _Day5_ViewState createState() => _Day5_ViewState();
}

class _Day5_ViewState extends State<Day5_View> {
  List<String> Exs2 = [
    "Walk 240 Meters in 3 Minutes",
  ];
  List<String> Exs1 = [
    "Climbing one flight of stairs",
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
    PhysioView.Day5 = [];
    Physio_View Get = new Physio_View();
    await Get.GetDay5();
    setState(() {
      if (PhysioView.Day5[0].length < 2) {
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
            "Day 5",
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
                                  "DAY 5",
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
                            PhysioView.Day5[0]["DOC1"][0].toString(),
                            0,
                            "DOC1",
                            "DAY5DATE"),
                        PhysioCards(
                            "Therapist Name",
                            PhysioView.Day5[0]["DOC2"][0].toString(),
                            0,
                            "DOC2",
                            "DAY5TEXT"),
                        PhysioCards(
                            "Designation",
                            PhysioView.Day5[0]["DOC3"][0].toString(),
                            0,
                            "DOC3",
                            "DAY5TEXT"),
                        PhysioCards(
                            "Written Home Exercise / Activity Guideline Reviewed",
                            PhysioView.Day5[0]["DOC4"][0].toString(),
                            0,
                            "DOC4",
                            "DAY5BOX"),
                        PhysioCards(
                            "Patient Given Written Information On OutPatient Cardiac Rehabilitation",
                            PhysioView.Day5[0]["DOC5"][0].toString(),
                            0,
                            "DOC5",
                            "DAY5BOX"),
                        PhysioCards(
                            "Check for understanding of activity guidelines",
                            PhysioView.Day5[0]["DOC6"][0].toString(),
                            0,
                            "DOC6",
                            "DAY5BOX"),
                        PhysioCards(
                            "Given To",
                            PhysioView.Day5[0]["DOC7"][0].toString(),
                            0,
                            "DOC7",
                            "DROP5"),
                        PhysioCards(
                            "Name",
                            PhysioView.Day5[0]["DOC8"][0].toString(),
                            0,
                            "DOC8",
                            "DAY5TEXT"),
                        PhysioCards(
                            "Time",
                            PhysioView.Day5[0]["DOC9"][0].toString(),
                            0,
                            "DOC9",
                            "DAY5TEXT"),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day5[0]["DOC10"][0].toString(),
                            0,
                            "DOC10",
                            "DAY5TEXT"),
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
                                      PhysioView.Day5[0]
                                              ["DOC" + (index + 11).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 11).toString(),
                                      "DAY5BOX"),
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
                              Exs2.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      Exs2[index],
                                      PhysioView.Day5[0]
                                              ["DOC" + (index + 12).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 12).toString(),
                                      "DAY5BOX"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Hall Ambulation as tolerated & Climbing full flight of stairs one step at a time ( or as required at home) up and down",
                            PhysioView.Day5[0]["DOC13"][0].toString(),
                            0,
                            "DOC13",
                            "DAY5TEXT"),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Monitoring Parameter Responses",
                                style: GoogleFonts.lato(
                                  color: Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                                      PhysioView.Day5[0]
                                              ["DOC" + (index + 14).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 14).toString(),
                                      "DAY5TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day5[0]
                                              ["DOC" + (index + 14).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 14).toString(),
                                      "DAY5TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day5[0]["DOC19".toString()][0]
                                .toString(),
                            0,
                            "DOC19",
                            "DAY5TEXT"),
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
                                      PhysioView.Day5[0]
                                              ["DOC" + (index + 20).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 20).toString(),
                                      "DAY5TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day5[0]
                                              ["DOC" + (index + 20).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 20).toString(),
                                      "DAY5TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day5[0]["DOC25".toString()][0]
                                .toString(),
                            0,
                            "DOC25",
                            "DAY5TEXT"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
