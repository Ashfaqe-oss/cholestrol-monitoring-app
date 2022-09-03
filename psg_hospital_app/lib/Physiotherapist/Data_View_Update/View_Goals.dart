import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class View_Goals extends StatefulWidget {
  const View_Goals({Key? key}) : super(key: key);

  @override
  _View_GoalsState createState() => _View_GoalsState();
}

class _View_GoalsState extends State<View_Goals> {
  bool load = true;

  void loaddata() async {
    PhysioView.Goals = [];
    Physio_View Get = new Physio_View();
    await Get.GetGoals();
    setState(() {
      if (PhysioView.Goals[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  final List<String> Contraindications = [
    "Unstable Angina",
    "Resting Systolic BP > 200 mmHg",
    "Resting diastolic BP > 100 mmHg",
    "Orthostatic Hypotension",
    "Aortic Stenosis",
    "Systemic Illness",
    "Uncontrolled Diabetes Mellitus",
    "Sinus Tachycardia",
    "Resting ST Displacement > 3",
    "Atrial Arrhythmia",
    "Recent Embolism",
    "Thrombophlebitis",
    "Musculoskeletal problems",
    "Uncontrolled CHF",
    "Fever",
    "Ventricular Arrhythmia",
    "Uncontrolled CHF",
    "Third Degree Heart Block",
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
            "Goals",
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
                                  "Contraindications",
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
                              Contraindications.length,
                              (index) => Column(children: [
                                    PhysioCards(
                                        Contraindications[index],
                                        PhysioView.Goals[0]
                                                ["DOC" + (index + 1).toString()]
                                            .toString(),
                                        0,
                                        "DOC" + (index + 1).toString(),
                                        "GOALBOX"),
                                  ])),
                        ),
                        PhysioCards(
                            "Others",
                            PhysioView.Goals[0]["DOC19"].toString(),
                            19,
                            "DOC19",
                            "GOALTEXT"),
                        PhysioCards(
                            "Name (CRRI)",
                            PhysioView.Goals[0]["DOC20"].toString(),
                            20,
                            "DOC20",
                            "GOALTEXT"),
                        PhysioCards(
                            "Name (Sr.PT)",
                            PhysioView.Goals[0]["DOC21"].toString(),
                            21,
                            "DOC21",
                            "GOALTEXT"),
                        PhysioCards(
                            "Name (HOD)",
                            PhysioView.Goals[0]["DOC22"].toString(),
                            22,
                            "DOC22",
                            "GOALTEXT"),
                        PhysioCards(
                            "Name (Consultant)",
                            PhysioView.Goals[0]["DOC23"].toString(),
                            23,
                            "DOC23",
                            "GOALTEXT"),
                      ]),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
