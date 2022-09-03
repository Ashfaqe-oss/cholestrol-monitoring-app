import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Counsellor_View.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/View_Values.dart';

class Eco_View extends StatefulWidget {
  const Eco_View({Key? key}) : super(key: key);

  @override
  _Eco_ViewState createState() => _Eco_ViewState();
}

class _Eco_ViewState extends State<Eco_View> {
  bool load = true;
  void loaddata() async {
    CounsView.EconomicStatus = [];
    Counsellor_View Get = new Counsellor_View();
    await Get.GetEco();
    setState(() {
      if (CounsView.EconomicStatus[0].length < 2) {
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Basic Socio Demographic Details",
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
                          "What is the highest degree or level of education you have completed?",
                          CounsView.EconomicStatus[0]["DOC1"].toString(),
                          1,
                          "DOC1",
                          "DROP4"),
                      CounsellorCards(
                          "Others",
                          CounsView.EconomicStatus[0]["DOC2"].toString(),
                          2,
                          "DOC2",
                          "ECOTEXT"),
                      CounsellorCards(
                          "What is your marital status?",
                          CounsView.EconomicStatus[0]["DOC3"].toString(),
                          3,
                          "DOC3",
                          "DROP5"),
                      CounsellorCards(
                          "Others",
                          CounsView.EconomicStatus[0]["DOC4"].toString(),
                          4,
                          "DOC4",
                          "ECOTEXT"),
                      CounsellorCards(
                          "Which of the following best describes your current employement status?",
                          CounsView.EconomicStatus[0]["DOC5"].toString(),
                          5,
                          "DOC5",
                          "DROP6"),
                      CounsellorCards(
                          "Total Numbers in the family?",
                          CounsView.EconomicStatus[0]["DOC6"].toString(),
                          6,
                          "DOC6",
                          "DROP7"),
                      CounsellorCards(
                          "Education of head of family",
                          CounsView.EconomicStatus[0]["DOC7"].toString(),
                          7,
                          "DOC7",
                          "DROP8"),
                      CounsellorCards(
                          "Occupation of head family",
                          CounsView.EconomicStatus[0]["DOC8"].toString(),
                          8,
                          "DOC8",
                          "DROP9"),
                      CounsellorCards(
                          "In 2019 (February 2019 CPI)",
                          CounsView.EconomicStatus[0]["DOC9"].toString(),
                          9,
                          "DOC9",
                          "DROP10"),
                      CounsellorCards(
                          "Socio Economic Class",
                          CounsView.EconomicStatus[0]["DOC10"].toString(),
                          10,
                          "DOC10",
                          "ECOTEXT"),
                    ]),
              )
            : Container(),
      ),
    );
  }
}
