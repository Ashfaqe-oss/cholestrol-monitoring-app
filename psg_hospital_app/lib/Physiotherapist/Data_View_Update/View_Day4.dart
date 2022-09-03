import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class Day4_View extends StatefulWidget {
  const Day4_View({Key? key}) : super(key: key);

  @override
  _Day4_ViewState createState() => _Day4_ViewState();
}

class _Day4_ViewState extends State<Day4_View> {
  List<String> Exs2 = [
    "Walking for 5 to 7 Minutes as tolerated",
  ];
  List<String> Exs1 = [
    "Walking for 8 to 10 Minutes as tolerated",
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
    PhysioView.Day4 = [];
    Physio_View Get = new Physio_View();
    await Get.GetDay4();
    setState(() {
      if (PhysioView.Day4[0].length < 2) {
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
            "Day 4",
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
                                  "DAY 4",
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
                            PhysioView.Day4[0]["DOC1"][0].toString(),
                            0,
                            "DOC1",
                            "DAY4DATE"),
                        PhysioCards(
                            "Therapist Name",
                            PhysioView.Day4[0]["DOC2"][0].toString(),
                            0,
                            "DOC2",
                            "DAY4TEXT"),
                        PhysioCards(
                            "Designation",
                            PhysioView.Day4[0]["DOC3"][0].toString(),
                            0,
                            "DOC3",
                            "DAY4TEXT"),
                        PhysioCards(
                            "Teach Pulse Checking & Counting",
                            PhysioView.Day4[0]["DOC4"][0].toString(),
                            0,
                            "DOC4",
                            "DAY4BOX"),
                        PhysioCards(
                            "Reinforcement Benefits of outpatient cardiac rehabilitation",
                            PhysioView.Day4[0]["DOC5"][0].toString(),
                            0,
                            "DOC5",
                            "DAY4BOX"),
                        PhysioCards(
                            "Instruction on warm up and cool dowm exercise",
                            PhysioView.Day4[0]["DOC6"][0].toString(),
                            0,
                            "DOC6",
                            "DAY4BOX"),
                        PhysioCards(
                            "Answer patient's questions",
                            PhysioView.Day4[0]["DOC7"][0].toString(),
                            0,
                            "DOC7",
                            "DAY4BOX"),
                        PhysioCards(
                            "Given To",
                            PhysioView.Day4[0]["DOC8"][0].toString(),
                            0,
                            "DOC8",
                            "DROP5"),
                        PhysioCards(
                            "Name",
                            PhysioView.Day4[0]["DOC9"][0].toString(),
                            0,
                            "DOC9",
                            "DAY4TEXT"),
                        PhysioCards(
                            "Time",
                            PhysioView.Day4[0]["DOC10"][0].toString(),
                            0,
                            "DOC10",
                            "DAY4TEXT"),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day4[0]["DOC11"][0].toString(),
                            0,
                            "DOC11",
                            "DAY4TEXT"),
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
                                      PhysioView.Day4[0]
                                              ["DOC" + (index + 12).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 12).toString(),
                                      "DAY4BOX"),
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
                                      PhysioView.Day4[0]
                                              ["DOC" + (index + 13).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 13).toString(),
                                      "DAY4BOX"),
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
                                      PhysioView.Day4[0]
                                              ["DOC" + (index + 14).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 14).toString(),
                                      "DAY4TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day4[0]
                                              ["DOC" + (index + 14).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 14).toString(),
                                      "DAY4TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day4[0]["DOC19".toString()][0]
                                .toString(),
                            0,
                            "DOC19",
                            "DAY4TEXT"),
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
                                      PhysioView.Day4[0]
                                              ["DOC" + (index + 20).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 20).toString(),
                                      "DAY4TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day4[0]
                                              ["DOC" + (index + 20).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 20).toString(),
                                      "DAY4TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day4[0]["DOC25".toString()][0]
                                .toString(),
                            0,
                            "DOC21",
                            "DAY4TEXT"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
