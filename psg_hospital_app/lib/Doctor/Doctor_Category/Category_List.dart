import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Doctor_Category/Clinical_Examination.dart';
import 'package:psg_hospital_app/Doctor/Doctor_Category/Family_History.dart';
import 'package:psg_hospital_app/Doctor/Doctor_Category/Investigation_Results.dart';
import 'package:psg_hospital_app/Doctor/Doctor_Category/Respiratory_Physical.dart';
import 'package:psg_hospital_app/Doctor/Doctor_Category/RiskFactors.dart';
import 'package:psg_hospital_app/Doctor/Doctor_Category/Women_Specific_History.dart';

import '../../CurrentPatientInfo.dart';
import '../Data_Upload/Values.dart';

class Category_Doctor extends StatefulWidget {
  const Category_Doctor({Key? key}) : super(key: key);

  @override
  _Category_DoctorState createState() => _Category_DoctorState();
}

class _Category_DoctorState extends State<Category_Doctor> {
  List<String> HistoryOf = [
    "Type 2 Diabetes Mellitus",
    "Systemic Hypertension",
    "Dyslipidemia",
    "Heart Disease",
    "Smoking",
    "Tobacco chewing",
    "Alcohol consumption",
    "Chronic Kidney Disease",
    "Atrial Fibrillation",
    "Migraine",
    "Rheumatoid Arthritis",
    "Systemic lupus Erythematosus",
    "Severe Mental Illness",
    "Erectile Dysfunction",
    "On Atypical Antipsychotics?",
    "On Steroid Medications",
    "On Aspirin",
    "On Statin",
    "Obstructive Sleep Apnea",
  ];
  List<String> Col1 = ["Yes", "No", "Not Applicable"];
  List<String> Col2 = [
    "<1 Year",
    "1 to 5 Years",
    "5 to 10 Years",
    "> 10 Years",
    "Not Applicable"
  ];
  List<String> Col3 = [
    "On Medications",
    "Not On Medications",
    "Irregular Treatment",
    "Not Applicable"
  ];

  void initState() {
    super.initState();
    Doctor.DemographicData = [
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
    Doctor.RiskFactors = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
    ];

    Doctor.WomenSpecificInformation = [
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
      ""
    ];

    Doctor.FamilyHistory = [
      ["", "", "", "", ""],
      ["", "", "", "", ""],
      ["", "", "", "", ""],
      []
    ];
    Doctor.Sibilings = [];

    Doctor.ClinicalExamination = [
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
      "",
      "",
      "",
      "",
      "",
      "false",
      "false",
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
      "false",
      "",
      "",
      "",
      "",
    ];

    Doctor.Resp_Phy = [
      "",
      "false",
      "false",
      "false",
      "false",
      "false",
      "false",
      "",
      "",
      "false",
      "false",
      "false",
      "",
      "",
      "false",
      "false",
      "false",
      "false",
      "false",
      "",
      "",
    ];
    Doctor.Inv = [
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
      ["", "", "", ""],
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
              fontSize: 18,
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
                        elevation: 1,
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              "Patient ID : " + CurrentPatientInfo.PatientID,
                              style: GoogleFonts.lato(
                                color: const Color(0xff4A64FE),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const RiskFactors()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Risk Factors",
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
                                builder: (context) => const WomenSpecific()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Women Specific History",
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
                                builder: (context) => const FamilyHistory()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Family History",
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
                                builder: (context) => const BloodPressure()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Clinical Examination",
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
                                builder: (context) => const Res_Phy()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Respiratory System",
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
                                builder: (context) => const InvResult()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Diagnostic Investigation",
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
