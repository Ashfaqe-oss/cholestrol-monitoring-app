import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/CurrentPatientInfo.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Assessment.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Day1.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Day2.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Day3.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Day4.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Day5.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/Goals_and_Contraindications.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../Physiotherapist_Upload/Physio_Values.dart';
import 'Discharge_CheckList.dart';
import 'SIxMinWalkTest.dart';

class Category_Physio extends StatefulWidget {
  const Category_Physio({Key? key}) : super(key: key);

  @override
  _Category_PhysioState createState() => _Category_PhysioState();
}

class _Category_PhysioState extends State<Category_Physio> {
  void initState() {
    super.initState();
    Physiotherapist.Assessment = [
      "",

      "",
      "",
      "",
      "",
      "",

      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "",
      "false",
      "false",
      "false",
      "",
      "",
      "",
      "",
      "",
      "",

      "",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "",
      "",
      "",
      //
      "false",
      "false",
      "false", // PAGE 3
      "false",
      "false",
      "",
      "false",
      "false",
      "false",
      "",
      "",
      "",
      "",
      "",
      "",
      "",

      "false",
      "false",
      "false",
      "false",
      "",
      "false",
      "false",
      "",
      "false",
      "false",
      "false",
      "false",
    ];

    Physiotherapist.Goals = [
      "",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "",
      "",
      "",
      "",
      "",
    ];

    Physiotherapist.Day1 = [
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""],
      ["false", ""],
      ["false", ""], // TOP SECTION
      ["false", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // UPPER LIMB SESSION 1
      ["", ""],

      ["", ""],
      ["", ""], // UPPER LIMB SESSION 2
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""], // LOWER LIMB SESSION 1
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""], // LOWER LIMB SESSION 2
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // HEART RATE
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // HEART RATE
      ["", ""],
      ["", ""],
      ["", ""],
    ];

    Physiotherapist.Day2 = [
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["false", ""],
      ["false", ""], // TOP SECTION
      ["false", ""],
      ["false", ""],
      ["false", ""],
      ["false", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // UPPER LIMB SESSION 1
      ["", ""],

      ["", ""],
      ["", ""], // UPPER LIMB SESSION 2
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""], // LOWER LIMB SESSION 1
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""], // LOWER LIMB SESSION 2
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 1 HEART RATE
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 2 HEART RATE
      ["", ""],
      ["", ""],

      ["", ""], //COMMENTS S -1
      ["", ""], //COMMENTS S -2
      ["", ""]
    ];

    Physiotherapist.Day3 = [
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""],
      ["false", ""],
      ["false", ""], // TOP SECTION
      ["false", ""],
      ["false", ""],

      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // UPPER LIMB SESSION 1
      ["", ""],

      ["", ""],
      ["", ""], // UPPER LIMB SESSION 2
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 1 HEART RATE
      ["", ""],
      ["", ""],
      ["", ""], //COMMENTS S -1

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 2 HEART RATE
      ["", ""],
      ["", ""],
      ["", ""], //COMMENTS S -2
    ];

    Physiotherapist.Day4 = [
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["false", ""],
      ["false", ""], // TOP SECTION
      ["false", ""],
      ["false", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""], // SESSION 1

      ["", ""], // SESSION 2

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 1 HEART RATE
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 2 HEART RATE
      ["", ""],
      ["", ""],
      ["", ""], //COMMENTS S -1
    ];

    Physiotherapist.Day5 = [
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["false", ""],
      ["false", ""], // TOP SECTION
      ["false", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],

      ["", ""], // UPPER LIMB SESSION 1

      ["", ""], // UPPER LIMB SESSION 2

      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 1 HEART RATE
      ["", ""],
      ["", ""],

      ["", ""],
      ["", ""],
      ["", ""], // SESSION 2 HEART RATE
      ["", ""],
      ["", ""],

      ["", ""], //COMMENTS S -1
      ["", ""], //COMMENTS S -2
    ];

    Physiotherapist.SixMinuteWalkTest = [
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
    ];
    Physiotherapist.DischargeCheckList = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4A64FE),
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Options",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: const Color(0xffffffff),
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        elevation: 3,
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              "PatientID : " + CurrentPatientInfo.PatientID,
                              style: GoogleFonts.lato(
                                color: const Color(0xff4A64FE),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Assessment()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Assessment",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Goals()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Goals and Contraindications",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Day1()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 75,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Inpatient Physical Rehabilitation Protocol for Myocardial Infraction Patients - DAY 1",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Day2()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 75,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Inpatient Physical Rehabilitation Protocol for Myocardial Infraction Patients - DAY 2",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Day3()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 75,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Inpatient Physical Rehabilitation Protocol for Myocardial Infraction Patients - DAY 3",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Day4()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 75,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Inpatient Physical Rehabilitation Protocol for Myocardial Infraction Patients - DAY 4",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Day5()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 75,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Inpatient Physical Rehabilitation Protocol for Myocardial Infraction Patients - DAY 5",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => SixMinWalkTest()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "6 Minute Walk Test",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    const Discharge_CheckList()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Discharge Check List",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          /*
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      Dietition_EntryField3()),
                            );
                             */
                        },
                        child: ButtonWidget(
                          title: 'Next',
                          hasBorder: false,
                        ),
                      ),
                    ])),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ]),
      ),
    ));
  }
}
