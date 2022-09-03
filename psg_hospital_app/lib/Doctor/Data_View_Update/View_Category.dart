import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Clinical_View.dart';

import 'FamilyHistory.dart';
import 'Inv_Info.dart';
import 'RespInfo.dart';
import 'RiskFactors_View.dart';
import 'WomenSpecificInformation.dart';

class Category_Doctor_View extends StatefulWidget {
  const Category_Doctor_View({Key? key}) : super(key: key);

  @override
  _Category_Doctor_ViewState createState() => _Category_Doctor_ViewState();
}

class _Category_Doctor_ViewState extends State<Category_Doctor_View> {
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
            "View",
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => RiskFactor_View()),
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
                                builder: (context) => const WomenInfo_View()),
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
                                builder: (context) => FamilyHistory_View()),
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
                                builder: (context) => const Clinical_View()),
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
                                builder: (context) => const Resp_View()),
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
                                builder: (context) => Inv_View()),
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
