import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import 'Cards.dart';
import 'Doctor_View.dart';

class Inv_View extends StatefulWidget {
  const Inv_View({Key? key}) : super(key: key);

  @override
  _Inv_ViewState createState() => _Inv_ViewState();
}

class _Inv_ViewState extends State<Inv_View> {
  bool load = true;

  void loaddata() async {
    DocView.Investigation = [];
    Doctor_View Get = new Doctor_View();
    await Get.GetDigaInv();
    setState(() {
      if (DocView.Investigation[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  final List<String> Inv = [
    "FBS",
    "PPBS",
    "HbA1C",
    "UREA",
    "CREATININE",
    "POTASSIUM",
    "URIC_ACID",
    "TC",
    "TGL",
    "HDL",
    "NON_HDL",
    "LDL",
    "LPA",
    "Apo_A",
    "Apo_B",
    "SDLDL",
    "Homocysteine",
    "TSH",
    "HEMOGLOBIN",
    "RBC",
    "WBC",
    "HEMATOCRIT",
    "NEUTROPHIL",
    "LYMPHOCYTE",
    "MONOCYTE",
    "EOSINOPHIL",
    "BASOPHIL",
    "PLATELET_COUNT",
    "MCV",
    "RDW",
    "MPV",
    "PDW",
    "ESR",
    "CRP",
    "IL6",
    "Trop_T",
    "Pulse_Wave_Velocity",
    "EndoPAT",
    "CPK-MB",
    "Folate",
    "NTPROBNP",
    "VitB12",
    "Serology",
    "Peripheral Smear",
    "PT-INR",
    "Sodium",
  ];

  final List<String> LFT = [
    "Total Bilirubin",
    "Direct Bilirubin",
    "Indirect Bilirubin",
    "Total Protein",
    "Albumin",
    "Globulin",
    "SGOT",
    "SGPT",
  ];

  final List<String> AnemiaProfile = [
    "Iron",
    "Ferritin",
    "TIBC",
    "UIBC",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
    print(Inv.length);
    print(LFT.length);
    print(AnemiaProfile.length);
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
            "Investigation Results",
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
                              Inv.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              Inv[index],
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
                                        "Date",
                                        DocView.Investigation[0]
                                                ["DOC" + (index + 1).toString()]
                                                [0]
                                            .toString(),
                                        0,
                                        "DOC" + (index + 1).toString(),
                                        "INVDATE"),
                                    Cards(
                                        "Outside",
                                        DocView.Investigation[0]
                                                ["DOC" + (index + 1).toString()]
                                                [1]
                                            .toString(),
                                        1,
                                        "DOC" + (index + 1).toString(),
                                        "INVTEXT"),
                                    Cards(
                                        "In-Hospital",
                                        DocView.Investigation[0]
                                                ["DOC" + (index + 1).toString()]
                                                [2]
                                            .toString(),
                                        2,
                                        "DOC" + (index + 1).toString(),
                                        "INVTEXT"),
                                    Cards(
                                        "Result",
                                        DocView.Investigation[0]
                                                ["DOC" + (index + 1).toString()]
                                                [3]
                                            .toString(),
                                        2,
                                        "DOC" + (index + 1).toString(),
                                        "INVTEXT"),
                                    Divider(
                                      thickness: 3,
                                      color: Colors.grey,
                                    )
                                  ])),
                        ),
                        Cards(
                            "Others",
                            DocView.Investigation[0]["DOC" + (47).toString()][0]
                                .toString(),
                            0,
                            "DOC" + (47).toString(),
                            "INVTEXT"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              LFT.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              LFT[index],
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
                                        "Description",
                                        DocView.Investigation[0]["DOC" +
                                                (index + 48).toString()][1]
                                            .toString(),
                                        1,
                                        "DOC" + (index + 48).toString(),
                                        "INVTEXT"),
                                  ])),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              AnemiaProfile.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              AnemiaProfile[index],
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
                                        "Description",
                                        DocView.Investigation[0]["DOC" +
                                                (index + 55).toString()][1]
                                            .toString(),
                                        1,
                                        "DOC" + (index + 55).toString(),
                                        "INVTEXT"),
                                  ])),
                        ),
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
