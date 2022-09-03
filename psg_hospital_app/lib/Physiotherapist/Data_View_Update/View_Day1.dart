import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class Day1_View extends StatefulWidget {
  const Day1_View({Key? key}) : super(key: key);

  @override
  _Day1_ViewState createState() => _Day1_ViewState();
}

class _Day1_ViewState extends State<Day1_View> {
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
    PhysioView.Day1 = [];
    Physio_View Get = new Physio_View();
    await Get.GetDay1();
    setState(() {
      if (PhysioView.Day1[0].length < 2) {
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
            "Day 1",
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
                                  "DAY 1",
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
                            PhysioView.Day1[0]["DOC1"][0].toString(),
                            0,
                            "DOC1",
                            "DAY1DATE"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Inpatient Physical Rehabilitation Protocol For Myocardial Infarction Patients",
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
                            "Therapist Name",
                            PhysioView.Day1[0]["DOC2"][0].toString(),
                            0,
                            "DOC2",
                            "DAY1TEXT"),
                        PhysioCards(
                            "Designation",
                            PhysioView.Day1[0]["DOC3"][0].toString(),
                            0,
                            "DOC3",
                            "DAY1TEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Introduction to Inpatient Cardiac Rehabilitation & Goals",
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
                            "Home Exercise",
                            PhysioView.Day1[0]["DOC4"][0].toString(),
                            0,
                            "DOC4",
                            "DAY1BOX"),
                        PhysioCards(
                            "Activity Guidelines",
                            PhysioView.Day1[0]["DOC5"][0].toString(),
                            0,
                            "DOC5",
                            "DAY1BOX"),
                        PhysioCards(
                            "Outpatient Cardiac Rehabilitaion",
                            PhysioView.Day1[0]["DOC6"][0].toString(),
                            0,
                            "DOC6",
                            "DAY1BOX"),
                        PhysioCards(
                            "Given To",
                            PhysioView.Day1[0]["DOC7"][0].toString(),
                            0,
                            "DOC7",
                            "DAY1TEXT"),
                        PhysioCards(
                            "Name",
                            PhysioView.Day1[0]["DOC8"][0].toString(),
                            0,
                            "DOC8",
                            "DROP5"),
                        PhysioCards(
                            "Time",
                            PhysioView.Day1[0]["DOC9"][0].toString(),
                            0,
                            "DOC9",
                            "DAY1TEXT"),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day1[0]["DOC10"][0].toString(),
                            0,
                            "DOC10",
                            "DAY1TEXT"),
                        PhysioCards(
                            "Diaphragmatic Breathing Exercises",
                            PhysioView.Day1[0]["DOC11"][0].toString(),
                            0,
                            "DOC11",
                            "DAY1TEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Circulatory Exercise - Lying On the Bed",
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
                                  "UPPER LIMB ROM EXERCISE - SESSION 1",
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
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 12).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 12).toString(),
                                      "DAY1BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 12).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 12).toString(),
                                      "DAY1TEXT"),
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
                                  "UPPER LIMB ROM EXERCISE - SESSION 2",
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
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 16).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 16).toString(),
                                      "DAY1BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 16).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 16).toString(),
                                      "DAY1TEXT"),
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
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 20).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 20).toString(),
                                      "DAY1BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 20).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 20).toString(),
                                      "DAY1TEXT"),
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
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 24).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 24).toString(),
                                      "DAY1BOX"),
                                  PhysioCards(
                                      "Description",
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 24).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 24).toString(),
                                      "DAY1TEXT"),
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
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 28).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 28).toString(),
                                      "DAY1TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 28).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 28).toString(),
                                      "DAY1TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day1[0]["DOC33".toString()][0]
                                .toString(),
                            0,
                            "DOC32",
                            "DAY1TEXT"),
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
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 34).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 34).toString(),
                                      "DAY1TEXT"),
                                  PhysioCards(
                                      "EXERCISE",
                                      PhysioView.Day1[0]
                                              ["DOC" + (index + 34).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 34).toString(),
                                      "DAY1TEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                        PhysioCards(
                            "Therapist Comments",
                            PhysioView.Day1[0]["DOC39".toString()][0]
                                .toString(),
                            0,
                            "DOC39",
                            "DAY1TEXT"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
