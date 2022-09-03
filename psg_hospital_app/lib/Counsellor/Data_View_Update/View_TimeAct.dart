import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Counsellor_View.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/View_Values.dart';

class TimeAct_View extends StatefulWidget {
  const TimeAct_View({Key? key}) : super(key: key);

  @override
  _TimeAct_ViewState createState() => _TimeAct_ViewState();
}

class _TimeAct_ViewState extends State<TimeAct_View> {
  bool load = true;
  void loaddata() async {
    CounsView.TimeActivites = [];
    Counsellor_View Get = new Counsellor_View();
    await Get.GetTimeAct();
    setState(() {
      if (CounsView.TimeActivites[0].length < 2) {
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
                                "How do you rate your relationship with your family members?",
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
                          "Spouse",
                          CounsView.TimeActivites[0]["DOC1"].toString(),
                          1,
                          "DOC1",
                          "DROP3"),
                      CounsellorCards(
                          "Children",
                          CounsView.TimeActivites[0]["DOC2"].toString(),
                          2,
                          "DOC2",
                          "DROP3"),
                      CounsellorCards(
                          "Siblings",
                          CounsView.TimeActivites[0]["DOC3"].toString(),
                          3,
                          "DOC3",
                          "DROP3"),
                      CounsellorCards(
                          "Parents",
                          CounsView.TimeActivites[0]["DOC4"].toString(),
                          4,
                          "DOC4",
                          "DROP3"),
                      CounsellorCards(
                          "Kindly list your favorite leisure time activites",
                          CounsView.TimeActivites[0]["DOC5"].toString(),
                          5,
                          "DOC5",
                          "TIMETEXT"),
                      CounsellorCards(
                          "Do you like to get involved in religious activities? If yes what kind of activities",
                          CounsView.TimeActivites[0]["DOC6"].toString(),
                          6,
                          "DOC6",
                          "TIMETEXT"),
                      CounsellorCards(
                          "Do you have pets? If yes what kind of pets?",
                          CounsView.TimeActivites[0]["DOC7"].toString(),
                          7,
                          "DOC7",
                          "TIMETEXT"),
                    ]),
              )
            : Container(),
      ),
    );
  }
}
