import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import 'Cards.dart';

class Assessment_View extends StatefulWidget {
  const Assessment_View({Key? key}) : super(key: key);

  @override
  _Assessment_ViewState createState() => _Assessment_ViewState();
}

class _Assessment_ViewState extends State<Assessment_View> {
  bool load = true;
  void loaddata() async {
    PhysioView.Assessment = [];
    Physio_View Get = new Physio_View();
    await Get.GetAssessment();
    setState(() {
      if (PhysioView.Assessment[0].length < 2) {
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
            "Assessment",
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
                                  "Demographic Data",
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
                            "Rehab No: PMR/CR/",
                            PhysioView.Assessment[0]["DOC1"].toString(),
                            1,
                            "DOC1",
                            "ASSTEXT"),
                        PhysioCards(
                            "Date of MI",
                            PhysioView.Assessment[0]["DOC2"].toString(),
                            2,
                            "DOC2",
                            "ASSDATE"),
                        PhysioCards(
                            "Date of Assessment",
                            PhysioView.Assessment[0]["DOC3"].toString(),
                            3,
                            "DOC3",
                            "ASSDATE"),
                        PhysioCards(
                            "Date of Admission",
                            PhysioView.Assessment[0]["DOC4"].toString(),
                            4,
                            "DOC2",
                            "ASSDATE"),
                        PhysioCards(
                            "Date of Referral",
                            PhysioView.Assessment[0]["DOC5"].toString(),
                            5,
                            "DOC5",
                            "ASSDATE"),
                        PhysioCards(
                            "Rural",
                            PhysioView.Assessment[0]["DOC6"].toString(),
                            6,
                            "DOC3",
                            "ASSBOX"),
                        PhysioCards(
                            "Urban",
                            PhysioView.Assessment[0]["DOC7"].toString(),
                            7,
                            "DOC7",
                            "ASSBOX"),
                        PhysioCards(
                            "Crowded",
                            PhysioView.Assessment[0]["DOC8"].toString(),
                            8,
                            "DOC8",
                            "ASSBOX"),
                        PhysioCards(
                            "Isolated",
                            PhysioView.Assessment[0]["DOC9"].toString(),
                            9,
                            "DOC9",
                            "ASSBOX"),
                        PhysioCards(
                            "Ground Floor",
                            PhysioView.Assessment[0]["DOC10"].toString(),
                            10,
                            "DOC10",
                            "ASSBOX"),
                        PhysioCards(
                            "Stairs",
                            PhysioView.Assessment[0]["DOC11"].toString(),
                            11,
                            "DOC11",
                            "ASSBOX"),
                        PhysioCards(
                            "No of Steps/Flights",
                            PhysioView.Assessment[0]["DOC12"].toString(),
                            12,
                            "DOC12",
                            "ASSBOX"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Assistive Equipment",
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
                            "Hearing Aids",
                            PhysioView.Assessment[0]["DOC13"].toString(),
                            13,
                            "DOC13",
                            "ASSBOX"),
                        PhysioCards(
                            "Spectacles",
                            PhysioView.Assessment[0]["DOC14"].toString(),
                            14,
                            "DOC14",
                            "ASSBOX"),
                        PhysioCards(
                            "Mobility Aids",
                            PhysioView.Assessment[0]["DOC15"].toString(),
                            15,
                            "DOC15",
                            "ASSBOX"),
                        PhysioCards(
                            "Job Nature",
                            PhysioView.Assessment[0]["DOC16"].toString(),
                            16,
                            "DOC16",
                            "DROP1"),
                        PhysioCards(
                            "Working Environment",
                            PhysioView.Assessment[0]["DOC17"].toString(),
                            17,
                            "DOC17",
                            "DROP2"),
                        PhysioCards(
                            "Problems at work due to your condition",
                            PhysioView.Assessment[0]["DOC18"].toString(),
                            18,
                            "DOC18",
                            "DROP3"),
                        PhysioCards(
                            "Hobbies",
                            PhysioView.Assessment[0]["DOC19"].toString(),
                            19,
                            "DOC19",
                            "DROP4"),
                        PhysioCards(
                            "Hobbies Description",
                            PhysioView.Assessment[0]["DOC20"].toString(),
                            20,
                            "DOC20",
                            "ASSTEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Medical History",
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
                            "Referred By",
                            PhysioView.Assessment[0]["DOC21"].toString(),
                            21,
                            "DOC21",
                            "ASSTEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Medical Diagnosis",
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
                            "ACS-STEMI",
                            PhysioView.Assessment[0]["DOC22"].toString(),
                            22,
                            "DOC22",
                            "ASSBOX"),
                        PhysioCards(
                            "NSTMI",
                            PhysioView.Assessment[0]["DOC23"].toString(),
                            23,
                            "DOC23",
                            "ASSBOX"),
                        PhysioCards(
                            "UNSTABLE ANGINA",
                            PhysioView.Assessment[0]["DOC24"].toString(),
                            24,
                            "DOC24",
                            "ASSBOX"),
                        PhysioCards(
                            "AWMI",
                            PhysioView.Assessment[0]["DOC26"].toString(),
                            25,
                            "DOC25",
                            "ASSBOX"),
                        PhysioCards(
                            "IWMI",
                            PhysioView.Assessment[0]["DOC26"].toString(),
                            26,
                            "DOC26",
                            "ASSBOX"),
                        PhysioCards(
                            "PWMI",
                            PhysioView.Assessment[0]["DOC27"].toString(),
                            27,
                            "DOC27",
                            "ASSBOX"),
                        PhysioCards(
                            "HLMI",
                            PhysioView.Assessment[0]["DOC28"].toString(),
                            28,
                            "DOC28",
                            "ASSBOX"),
                        PhysioCards(
                            "RVMI",
                            PhysioView.Assessment[0]["DOC29"].toString(),
                            29,
                            "DOC29",
                            "ASSBOX"),
                        PhysioCards(
                            "Current Medical History",
                            PhysioView.Assessment[0]["DOC30"].toString(),
                            30,
                            "DOC30",
                            "ASSBOX"),
                        PhysioCards(
                            "Previous Treatment for this condition",
                            PhysioView.Assessment[0]["DOC31"].toString(),
                            31,
                            "DOC31",
                            "ASSTEXT"),
                        PhysioCards(
                            "Past Medical / Surgical History",
                            PhysioView.Assessment[0]["DOC32"].toString(),
                            32,
                            "DOC32",
                            "ASSTEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Risk Factors",
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
                                  "Obesity",
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
                            "Central",
                            PhysioView.Assessment[0]["DOC33"].toString(),
                            33,
                            "DOC33",
                            "ASSBOX"),
                        PhysioCards(
                            "Android",
                            PhysioView.Assessment[0]["DOC34"].toString(),
                            34,
                            "DOC34",
                            "ASSBOX"),
                        PhysioCards(
                            "Gynecoid",
                            PhysioView.Assessment[0]["DOC35"].toString(),
                            35,
                            "DOC35",
                            "ASSBOX"),
                        PhysioCards(
                            "Sudden Weight Gain",
                            PhysioView.Assessment[0]["DOC36"].toString(),
                            36,
                            "DOC36",
                            "ASSBOX"),
                        PhysioCards(
                            "Sudden Weight Loss",
                            PhysioView.Assessment[0]["DOC37"].toString(),
                            37,
                            "DOC37",
                            "ASSBOX"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Physical Activity",
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
                            "Walking Hours Per Day",
                            PhysioView.Assessment[0]["DOC38"].toString(),
                            38,
                            "DOC38",
                            "ASSTEXT"),
                        PhysioCards(
                            "Strength",
                            PhysioView.Assessment[0]["DOC39"].toString(),
                            39,
                            "DOC39",
                            "ASSBOX"),
                        PhysioCards(
                            "Aerobics",
                            PhysioView.Assessment[0]["DOC40"].toString(),
                            40,
                            "DOC40",
                            "ASSBOX"),
                        PhysioCards(
                            "HITT",
                            PhysioView.Assessment[0]["DOC41"].toString(),
                            41,
                            "DOC41",
                            "ASSBOX"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Physical Exercise",
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
                            "Day Per Week",
                            PhysioView.Assessment[0]["DOC42"].toString(),
                            42,
                            "DOC42",
                            "ASSTEXT"),
                        PhysioCards(
                            "Hours Per Week",
                            PhysioView.Assessment[0]["DOC43"].toString(),
                            43,
                            "DOC43",
                            "ASSTEXT"),
                        PhysioCards(
                            "Weight (Kgs)",
                            PhysioView.Assessment[0]["DOC44"].toString(),
                            44,
                            "DOC44",
                            "ASSTEXT"),
                        PhysioCards(
                            "Height (Cms)",
                            PhysioView.Assessment[0]["DOC45"].toString(),
                            45,
                            "DOC45",
                            "ASSTEXT"),
                        PhysioCards(
                            "Waist Circumference (Cms)",
                            PhysioView.Assessment[0]["DOC46"].toString(),
                            46,
                            "DOC46",
                            "ASSTEXT"),
                        PhysioCards(
                            "Hip Circumference (Cms)",
                            PhysioView.Assessment[0]["DOC47"].toString(),
                            47,
                            "DOC47",
                            "ASSTEXT"),
                        PhysioCards(
                            "BMI",
                            PhysioView.Assessment[0]["DOC48"].toString(),
                            48,
                            "DOC48",
                            "ASSTEXT"),
                        PhysioCards(
                            "W:H Ratio",
                            PhysioView.Assessment[0]["DOC49"].toString(),
                            49,
                            "DOC49",
                            "ASSTEXT"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Previous Functional Status & Activity",
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
                                  "Self Care",
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
                            "Dependent",
                            PhysioView.Assessment[0]["DOC50"].toString(),
                            50,
                            "DOC50",
                            "ASSBOX"),
                        PhysioCards(
                            "InDependent",
                            PhysioView.Assessment[0]["DOC51"].toString(),
                            51,
                            "DOC51",
                            "ASSBOX"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Basic ADL",
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
                            "Dependent",
                            PhysioView.Assessment[0]["DOC52"].toString(),
                            52,
                            "DOC52",
                            "ASSBOX"),
                        PhysioCards(
                            "InDependent",
                            PhysioView.Assessment[0]["DOC53"].toString(),
                            53,
                            "DOC53",
                            "ASSBOX"),
                        PhysioCards(
                            "Work / Home Management",
                            PhysioView.Assessment[0]["DOC54"].toString(),
                            54,
                            "DOC54",
                            "ASSBOX"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Instrumental ADL",
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
                            "Dependent",
                            PhysioView.Assessment[0]["DOC55"].toString(),
                            55,
                            "DOC55",
                            "ASSBOX"),
                        PhysioCards(
                            "InDependent",
                            PhysioView.Assessment[0]["DOC56"].toString(),
                            56,
                            "DOC56",
                            "ASSBOX"),
                        PhysioCards(
                            "Community Activities",
                            PhysioView.Assessment[0]["DOC57"].toString(),
                            57,
                            "DOC57",
                            "ASSBOX"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Functional & Therapeutic Status Classification",
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
                            "Pattern 6A",
                            PhysioView.Assessment[0]["DOC58"].toString(),
                            58,
                            "DOC58",
                            "ASSBOX"),
                        PhysioCards(
                            "Pattern 6B",
                            PhysioView.Assessment[0]["DOC59"].toString(),
                            59,
                            "DOC59",
                            "ASSBOX"),
                        PhysioCards(
                            "Pattern 6C",
                            PhysioView.Assessment[0]["DOC60"].toString(),
                            60,
                            "DOC60",
                            "ASSBOX"),
                        PhysioCards(
                            "Pattern 6D",
                            PhysioView.Assessment[0]["DOC61"].toString(),
                            61,
                            "DOC61",
                            "ASSBOX"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
