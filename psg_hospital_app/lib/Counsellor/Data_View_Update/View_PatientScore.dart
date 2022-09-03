import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Counsellor_View.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/View_Values.dart';

class PatientScore_View extends StatefulWidget {
  const PatientScore_View({Key? key}) : super(key: key);

  @override
  _PatientScore_ViewState createState() => _PatientScore_ViewState();
}

class _PatientScore_ViewState extends State<PatientScore_View> {
  bool load = true;
  void loaddata() async {
    CounsView.PatientScore = [];
    Counsellor_View Get = new Counsellor_View();
    await Get.GetPatientScore();
    setState(() {
      if (CounsView.PatientScore[0].length < 2) {
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
            "Patient Score",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: load == false
            ? SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "",
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
                      CounsellorCards(
                          "I have felt cheerful in good spirits",
                          CounsView.PatientScore[0]["DOC1"].toString(),
                          1,
                          "DOC1",
                          "DROP1"),
                      CounsellorCards(
                          "I have felt calm and relaxed",
                          CounsView.PatientScore[0]["DOC2"].toString(),
                          2,
                          "DOC2",
                          "DROP1"),
                      CounsellorCards(
                          "I have felt active and vigorous",
                          CounsView.PatientScore[0]["DOC3"].toString(),
                          3,
                          "DOC3",
                          "DROP1"),
                      CounsellorCards(
                          "I woke up feeling fresh and rested",
                          CounsView.PatientScore[0]["DOC4"].toString(),
                          4,
                          "DOC4",
                          "DROP1"),
                      CounsellorCards(
                          "My daily life has been filled with things that interest me.",
                          CounsView.PatientScore[0]["DOC5"].toString(),
                          5,
                          "DOC5",
                          "DROP1"),
                      CounsellorCards(
                          "Score",
                          CounsView.PatientScore[0]["DOC6"].toString(),
                          6,
                          "DOC6",
                          "SCORETEXT"),
                      CounsellorCards(
                          "During the past 30 days how many days have you felt angry at least once?",
                          CounsView.PatientScore[0]["DOC7"].toString(),
                          7,
                          "DOC7",
                          "SCORETEXT"),
                      CounsellorCards(
                          "During the past 30 days how many days have you felt worried, tense or anxious?",
                          CounsView.PatientScore[0]["DOC8"].toString(),
                          8,
                          "DOC8",
                          "SCORETEXT"),
                      CounsellorCards(
                          "During the past 30 days how many days have you felt sad or depressed?",
                          CounsView.PatientScore[0]["DOC9"].toString(),
                          9,
                          "DOC9",
                          "SCORETEXT"),
                    ]),
              )
            : Container(),
      ),
    );
  }
}
