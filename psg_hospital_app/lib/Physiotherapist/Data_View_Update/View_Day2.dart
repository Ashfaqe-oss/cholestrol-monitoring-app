import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class Day2_View extends StatefulWidget {
  const Day2_View({Key? key}) : super(key: key);

  @override
  _Day2_ViewState createState() => _Day2_ViewState();
}

class _Day2_ViewState extends State<Day2_View> {
  List<String> UL = ["Shoulder", "Elbow", "Wrist", "Fingers"];
  List<String> LL = ["Hip", "Knee", "Ankle", "Toes"];
  List<String> HeartSession = [
    "Heart Rate",
    "SPO2",
    "Blood Pressure",
    "Borg's Scale",
    "MET's"
  ];
  bool load = true;
  void loaddata() async {
    PhysioView.Day2 = [];
    Physio_View Get = new Physio_View();
    await Get.GetDay2();
    setState(() {
      if (PhysioView.Day2[0].length < 2) {
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
            "Day 2",
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
                                  "DAY 2",
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
                            PhysioView.Day2[0]["DOC1"][0].toString(),
                            0,
                            "DOC1",
                            "DAY2DATE"),
                        PhysioCards(
                            "Therapist Name",
                            PhysioView.Day2[0]["DOC2"][0].toString(),
                            0,
                            "DOC2",
                            "Day2TEXT"),
                        PhysioCards(
                            "Designation",
                            PhysioView.Day2[0]["DOC3"][0].toString(),
                            0,
                            "DOC3",
                            "Day2TEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Identification of CAD Risk Factors",
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
                            "Diabetes",
                            PhysioView.Day2[0]["DOC4"][0].toString(),
                            0,
                            "DOC4",
                            "Day2BOX"),
                        PhysioCards(
                            "Hypertension",
                            PhysioView.Day2[0]["DOC5"][0].toString(),
                            0,
                            "DOC5",
                            "Day2BOX"),
                        PhysioCards(
                            "Dyslipdemia",
                            PhysioView.Day2[0]["DOC6"][0].toString(),
                            0,
                            "DOC6",
                            "Day2BOX"),
                        PhysioCards(
                            "Obesity",
                            PhysioView.Day2[0]["DOC7"][0].toString(),
                            0,
                            "DOC7",
                            "Day2BOX"),
                        PhysioCards(
                            "Smoking, Alcohol",
                            PhysioView.Day2[0]["DOC8"][0].toString(),
                            0,
                            "DOC8",
                            "Day2BOX"),
                        PhysioCards(
                            "Insufficient Fruits & Vegetable Intake",
                            PhysioView.Day2[0]["DOC9"][0].toString(),
                            0,
                            "DOC9",
                            "Day2BOX"),
                        PhysioCards(
                            "Given To",
                            PhysioView.Day2[0]["DOC10"][0].toString(),
                            0,
                            "DOC10",
                            "DROP5"),
                        PhysioCards(
                            "Name",
                            PhysioView.Day2[0]["DOC11"][0].toString(),
                            0,
                            "DOC11",
                            "Day2TEXT"),
                        PhysioCards(
                            "Time",
                            PhysioView.Day2[0]["DOC12"][0].toString(),
                            0,
                            "DOC12",
                            "Day2TEXT"),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day2[0]["DOC13"][0].toString(),
                            0,
                            "DOC13",
                            "Day2TEXT"),
                        PhysioCards(
                            "Mobilize To Chair Sitting",
                            PhysioView.Day2[0]["DOC14"][0].toString(),
                            0,
                            "DOC14",
                            "Day2TEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Circulatory Exercise - Sitting in the chair & In Standing",
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "UPPER LIMB ROM EXERCISE - SESSION 1 (Sitting)",
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
                              UL.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      UL[index],
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 15).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 15).toString(),
                                      "Day2BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 15).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 15).toString(),
                                      "Day2TEXT"),
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
                                  "UPPER LIMB ROM EXERCISE - SESSION 2 (Sitting)",
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
                              UL.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      UL[index],
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 19).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 19).toString(),
                                      "Day2BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 19).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 19).toString(),
                                      "Day2TEXT"),
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
                                  "LOWER LIMB ROM EXERCISE - SESSION 1",
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
                              LL.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      LL[index],
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 23).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 23).toString(),
                                      "Day2BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 23).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 23).toString(),
                                      "Day2TEXT"),
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
                                  "LOWER LIMB ROM EXERCISE - SESSION 2",
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
                              LL.length,
                              (index) => Column(
                                children: [
                                  PhysioCards(
                                      LL[index],
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 27).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 27).toString(),
                                      "Day2BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 27).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 27).toString(),
                                      "Day2TEXT"),
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
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 31).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 31).toString(),
                                      "Day2TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 31).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 31).toString(),
                                      "Day2TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day2[0]["DOC36".toString()][0]
                                .toString(),
                            0,
                            "DOC36",
                            "Day2TEXT"),
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
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 37).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 37).toString(),
                                      "Day2TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day2[0]
                                              ["DOC" + (index + 37).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 37).toString(),
                                      "Day2TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day2[0]["DOC42".toString()][0]
                                .toString(),
                            0,
                            "DOC42",
                            "Day2TEXT"),
                        PhysioCards(
                            "Limited Hall Ambulation",
                            PhysioView.Day2[0]["DOC43".toString()][0]
                                .toString(),
                            0,
                            "DOC43",
                            "Day2TEXT"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
