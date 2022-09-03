import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import 'Cards.dart';
import 'Doctor_View.dart';

class Clinical_View extends StatefulWidget {
  const Clinical_View({Key? key}) : super(key: key);

  @override
  _Clinical_ViewState createState() => _Clinical_ViewState();
}

class _Clinical_ViewState extends State<Clinical_View> {
  bool load = true;

  void loaddata() async {
    DocView.ClinicalExamination = [];
    Doctor_View Get = new Doctor_View();
    await Get.GetClinicInfo();
    setState(() {
      if (DocView.ClinicalExamination[0].length < 2) {
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
            "Clinical Examination",
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Blood Pressure",
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
                                Cards(
                                    "Right Upper Limb",
                                    DocView.ClinicalExamination[0]["DOC1"],
                                    1,
                                    "DOC1",
                                    "CLINICTEXT"),
                                Cards(
                                    "Right Lower Limb",
                                    DocView.ClinicalExamination[0]["DOC2"],
                                    2,
                                    "DOC2",
                                    "CLINICTEXT"),
                                Cards(
                                    "Left Upper Limb",
                                    DocView.ClinicalExamination[0]["DOC3"],
                                    3,
                                    "DOC3",
                                    "CLINICTEXT"),
                                Cards(
                                    "Left Lower Limb",
                                    DocView.ClinicalExamination[0]["DOC4"],
                                    4,
                                    "DOC4",
                                    "CLINICTEXT"),
                                Cards(
                                    "Pulse Rate( bts\\mint )",
                                    DocView.ClinicalExamination[0]["DOC5"],
                                    5,
                                    "DOC5",
                                    "CLINICTEXT"),
                                Cards(
                                    "Carotid Femoral Pulse",
                                    DocView.ClinicalExamination[0]["DOC6"],
                                    6,
                                    "DOC6",
                                    "CLINICTEXT"),
                                Cards(
                                    "Temperature (F)",
                                    DocView.ClinicalExamination[0]["DOC7"],
                                    7,
                                    "DOC7",
                                    "CLINICTEXT"),
                                Cards(
                                    "SpO2 (%) ",
                                    DocView.ClinicalExamination[0]["DOC8"],
                                    8,
                                    "DOC8",
                                    "CLINICTEXT"),
                                Cards(
                                    "Supine ",
                                    DocView.ClinicalExamination[0]["DOC9"],
                                    9,
                                    "DOC9",
                                    "CLINICTEXT"),
                                Cards(
                                    "Standing",
                                    DocView.ClinicalExamination[0]["DOC10"],
                                    10,
                                    "DOC10",
                                    "CLINICTEXT"),
                                Cards(
                                    "Sitting",
                                    DocView.ClinicalExamination[0]["DOC11"],
                                    11,
                                    "DOC11",
                                    "CLINICTEXT"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "ECG",
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
                                /*


                                IMAGE


                                 */
                                Cards(
                                    "Ventricular Rate (b/min)",
                                    DocView.ClinicalExamination[0]["DOC13"],
                                    13,
                                    "DOC13",
                                    "CLINICTEXT"),
                                Cards(
                                    "Rhythm",
                                    DocView.ClinicalExamination[0]["DOC14"],
                                    14,
                                    "DOC14",
                                    "CLINICTEXT"),
                                Cards(
                                    "Chamber",
                                    DocView.ClinicalExamination[0]["DOC15"],
                                    15,
                                    "DOC15",
                                    "CLINICTEXT"),
                                Cards(
                                    "ST Changes",
                                    DocView.ClinicalExamination[0]["DOC16"],
                                    16,
                                    "DOC16",
                                    "CLINICTEXT"),
                                Cards(
                                    "Comments",
                                    DocView.ClinicalExamination[0]["DOC17"],
                                    17,
                                    "DOC17",
                                    "CLINICTEXT"),
                                Cards(
                                    "LV",
                                    DocView.ClinicalExamination[0]["DOC18"],
                                    18,
                                    "DOC18",
                                    "CLINICTEXT"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "ECHO",
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
                                Cards(
                                    "EF",
                                    DocView.ClinicalExamination[0]["DOC19"],
                                    19,
                                    "DOC19",
                                    "CLINICTEXT"),
                                Cards(
                                    "CLOT/EFFUSION",
                                    DocView.ClinicalExamination[0]["DOC20"],
                                    20,
                                    "DOC20",
                                    "CLINICBOX"),
                                Cards(
                                    "PAH",
                                    DocView.ClinicalExamination[0]["DOC21"],
                                    21,
                                    "DOC21",
                                    "CLINICBOX"),
                                Cards(
                                    "Others",
                                    DocView.ClinicalExamination[0]["DOC22"],
                                    22,
                                    "DOC22",
                                    "CLINICTEXT"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "X - Ray",
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
                                Cards(
                                    "Heart",
                                    DocView.ClinicalExamination[0]["DOC23"],
                                    23,
                                    "DOC23",
                                    "CLINICTEXT"),
                                Cards(
                                    "Lungs",
                                    DocView.ClinicalExamination[0]["DOC24"],
                                    24,
                                    "DOC24",
                                    "CLINICTEXT"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Coronary Angiography",
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
                                Cards(
                                    "Single Vessel Disease",
                                    DocView.ClinicalExamination[0]["DOC25"],
                                    25,
                                    "DOC25",
                                    "CLINICBOX"),
                                Cards(
                                    "Double Vessel Disease",
                                    DocView.ClinicalExamination[0]["DOC26"],
                                    26,
                                    "DOC26",
                                    "CLINICBOX"),
                                Cards(
                                    "Triple Vessel Disease",
                                    DocView.ClinicalExamination[0]["DOC27"],
                                    27,
                                    "DOC27",
                                    "CLINICBOX"),
                                Cards(
                                    "Branch Vessel Disease",
                                    DocView.ClinicalExamination[0]["DOC28"],
                                    28,
                                    "DOC28",
                                    "CLINICBOX"),
                                Cards(
                                    "Re-canalized CAD",
                                    DocView.ClinicalExamination[0]["DOC29"],
                                    29,
                                    "DOC29",
                                    "CLINICBOX"),
                                Cards(
                                    "Minor CAD",
                                    DocView.ClinicalExamination[0]["DOC30"],
                                    30,
                                    "DOC30",
                                    "CLINICBOX"),
                              ]),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Planner For",
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
                              Cards(
                                  "Medical Management",
                                  DocView.ClinicalExamination[0]["DOC31"],
                                  31,
                                  "DOC31",
                                  "CLINICBOX"),
                              Cards(
                                  "PTCA",
                                  DocView.ClinicalExamination[0]["DOC32"],
                                  32,
                                  "DOC32",
                                  "CLINICBOX"),
                              Cards(
                                  "CABG",
                                  DocView.ClinicalExamination[0]["DOC33"],
                                  33,
                                  "DOC33",
                                  "CLINICBOX"),
                              Cards(
                                  "Others",
                                  DocView.ClinicalExamination[0]["DOC34"],
                                  34,
                                  "DOC34",
                                  "CLINICTEXT"),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Angina & Grade",
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
                              Cards(
                                  "Functional Classification",
                                  DocView.ClinicalExamination[0]["DOC35"],
                                  35,
                                  "DOC35",
                                  "DROP5"),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        "Dyspnea & Grade",
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
                              Cards(
                                  "NYHA",
                                  DocView.ClinicalExamination[0]["DOC36"],
                                  36,
                                  "DOC36",
                                  "DROP6"),
                              Cards(
                                  "Others",
                                  DocView.ClinicalExamination[0]["DOC37"],
                                  37,
                                  "DOC37",
                                  "CLINICTEXT"),
                            ]),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
