import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import 'Doctor_View.dart';

class RiskFactor_View extends StatefulWidget {
  const RiskFactor_View({Key? key}) : super(key: key);

  @override
  _RiskFactor_ViewState createState() => _RiskFactor_ViewState();
}

class _RiskFactor_ViewState extends State<RiskFactor_View> {
  bool load = true;
  void loaddata() async {
    DocView.RiskFactors = [];
    Doctor_View Get = new Doctor_View();
    await Get.GetRiskFactors();
    setState(() {
      if (DocView.RiskFactors[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  List<String> HistoryOf = [
    "Type 2 Diabetes Mellitus",
    "Systemic Hypertension",
    "Dyslipidemia",
    "Heart Disease",
    "Smoking",
    "Hypothyroidism",
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
    "Respiratory Illness",
  ];

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
            "Risk Factors",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              HistoryOf.length,
                              (index) => Column(children: [
                                    Cards(
                                        HistoryOf[index],
                                        DocView.RiskFactors[0]
                                                ["DOC" + (index + 1).toString()]
                                                [0]
                                            .toString(),
                                        0,
                                        "DOC" + (index + 1).toString(),
                                        "DROP1"),
                                    Cards(
                                        "Duration",
                                        DocView.RiskFactors[0]
                                                ["DOC" + (index + 1).toString()]
                                                [1]
                                            .toString(),
                                        1,
                                        "DOC" + (index + 1).toString(),
                                        "DROP2"),
                                    Cards(
                                        "Treatment",
                                        DocView.RiskFactors[0]
                                                ["DOC" + (index + 1).toString()]
                                                [2]
                                            .toString(),
                                        2,
                                        "DOC" + (index + 1).toString(),
                                        "DROP3"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 3,
                                      ),
                                    ),
                                  ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "On Aspirin",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Cards("", DocView.RiskFactors[0]["DOC19"][0].toString(),
                            0, "DOC19", "DROP1"),
                        Cards(
                            "Duration",
                            DocView.RiskFactors[0]["DOC19"][1].toString(),
                            1,
                            "DOC19",
                            "DROP2"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
