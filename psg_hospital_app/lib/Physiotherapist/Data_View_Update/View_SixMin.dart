import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class SixMin_View extends StatefulWidget {
  const SixMin_View({Key? key}) : super(key: key);

  @override
  _SixMin_ViewState createState() => _SixMin_ViewState();
}

class _SixMin_ViewState extends State<SixMin_View> {
  bool load = true;
  List<String> Lap = [
    "Lap 1",
    "Lap 2",
    "Lap 3",
    "Lap 4",
    "Lap 5",
    "Lap 6",
    "Lap 7",
    "Lap 8",
    "Lap 9",
    "Lap 10"
  ];
  void loaddata() async {
    PhysioView.SixMin = [];
    Physio_View Get = new Physio_View();
    await Get.GetSix();
    setState(() {
      if (PhysioView.SixMin[0].length < 2) {
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
            "",
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
                                  "6 Minute Walk Test",
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
                            PhysioView.SixMin[0]["DOC1"][0].toString(),
                            0,
                            "DOC1",
                            "SIXDATE"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Vital Parameters",
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
                            "BP",
                            PhysioView.SixMin[0]["DOC2"][0].toString(),
                            0,
                            "DOC2",
                            "SIXTEST"),
                        PhysioCards(
                            "BP - (mmg)",
                            PhysioView.SixMin[0]["DOC2"][1].toString(),
                            1,
                            "DOC2",
                            "SIXTEST"),
                        PhysioCards(
                            "HR",
                            PhysioView.SixMin[0]["DOC3"][0].toString(),
                            0,
                            "DOC3",
                            "SIXTEST"),
                        PhysioCards(
                            "B / Min",
                            PhysioView.SixMin[0]["DOC3"][1].toString(),
                            1,
                            "DOC3",
                            "SIXTEST"),
                        PhysioCards(
                            "SpO2",
                            PhysioView.SixMin[0]["DOC4"][0].toString(),
                            0,
                            "DOC4",
                            "SIXTEST"),
                        PhysioCards(
                            "SpO2 - (%)",
                            PhysioView.SixMin[0]["DOC4"][1].toString(),
                            1,
                            "DOC4",
                            "SIXTEST"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Laps",
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
                              Lap.length,
                              (index) => Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            "Post-Test Parameters " +
                                                Lap[index],
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
                                      "Total Distance",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [0]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Speed",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [1]
                                          .toString(),
                                      1,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Met",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [2]
                                          .toString(),
                                      2,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Vo2 Max",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [3]
                                          .toString(),
                                      3,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Heart Rate",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [4]
                                          .toString(),
                                      4,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Saturation",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [5]
                                          .toString(),
                                      5,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            "Post-Test Parameters " +
                                                Lap[index],
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
                                      "Immediate",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [6]
                                          .toString(),
                                      6,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "One Minute",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [7]
                                          .toString(),
                                      7,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Second Minute",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [8]
                                          .toString(),
                                      8,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  PhysioCards(
                                      "Third Minute",
                                      PhysioView.SixMin[0]
                                              ["DOC" + (index + 5).toString()]
                                              [9]
                                          .toString(),
                                      9,
                                      "DOC" + (index + 5).toString(),
                                      "SIXTEXT"),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            )),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
