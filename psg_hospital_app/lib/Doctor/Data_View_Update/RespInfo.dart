import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import 'Cards.dart';
import 'Doctor_View.dart';

class Resp_View extends StatefulWidget {
  const Resp_View({Key? key}) : super(key: key);

  @override
  _Resp_ViewState createState() => _Resp_ViewState();
}

class _Resp_ViewState extends State<Resp_View> {
  bool load = true;

  void loaddata() async {
    DocView.RespInfo = [];
    Doctor_View Get = new Doctor_View();
    await Get.GetRespInfo();
    setState(() {
      if (DocView.RespInfo[0].length < 2) {
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
            "Respiratory System",
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
                            children: [
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Respiratory System",
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
                                Cards("NAD", DocView.RespInfo[0]["DOC1"], 1,
                                    "DOC1", "RESPBOX"),
                                Cards("Creps", DocView.RespInfo[0]["DOC2"], 2,
                                    "DOC2", "RESPBOX"),
                                Cards("Wheeze", DocView.RespInfo[0]["DOC3"], 3,
                                    "DOC3", "RESPBOX"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Oxygen Requirement",
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
                                    "Nasal Prongs",
                                    DocView.RespInfo[0]["DOC4"],
                                    4,
                                    "DOC4",
                                    "RESPBOX"),
                                Cards("O2 Mask", DocView.RespInfo[0]["DOC5"], 5,
                                    "DOC5", "RESPBOX"),
                                Cards("NRM", DocView.RespInfo[0]["DOC6"], 6,
                                    "DOC3", "RESPBOX"),
                                Cards("SpO2 (%)", DocView.RespInfo[0]["DOC7"],
                                    7, "DOC7", "RESPTEXT"),
                                Cards("Cough", DocView.RespInfo[0]["DOC8"], 8,
                                    "DOC8", "DROP7"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Physical Examination",
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
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Higher Functions",
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
                                Cards("Conscious", DocView.RespInfo[0]["DOC9"],
                                    9, "DOC9", "RESPBOX"),
                                Cards("Oriented", DocView.RespInfo[0]["DOC10"],
                                    10, "DOC10", "RESPBOX"),
                                Cards(
                                    "Obeys Commands",
                                    DocView.RespInfo[0]["DOC11"],
                                    11,
                                    "DOC11",
                                    "RESPBOX"),
                                Cards(
                                    "GCS ( _ / 15)",
                                    DocView.RespInfo[0]["DOC12"],
                                    12,
                                    "DOC12",
                                    "RESPTEXT"),
                                Cards(
                                    "Inspection & Palpation",
                                    DocView.RespInfo[0]["DOC13"],
                                    13,
                                    "DOC13",
                                    "RESPTEXT"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Auscultation",
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
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Heart Sounds",
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
                                Cards("S1", DocView.RespInfo[0]["DOC14"], 14,
                                    "DOC14", "RESPBOX"),
                                Cards("S2", DocView.RespInfo[0]["DOC15"], 15,
                                    "DOC15", "RESPBOX"),
                                Cards("Murmur", DocView.RespInfo[0]["DOC16"],
                                    16, "DOC16", "RESPBOX"),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Lung Sounds",
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
                                Cards("Clear", DocView.RespInfo[0]["DOC17"], 17,
                                    "DOC17", "RESPBOX"),
                                Cards("Creps", DocView.RespInfo[0]["DOC18"], 18,
                                    "DOC18", "RESPBOX"),
                                Cards(
                                    "Heart Rate & Rhythm",
                                    DocView.RespInfo[0]["DOC19"],
                                    19,
                                    "DOC19",
                                    "RESPTEXT"),
                                Cards(
                                    "Inspection & Palpation",
                                    DocView.RespInfo[0]["DOC20"],
                                    20,
                                    "DOC20",
                                    "RESPTEXT"),
                              ]),
                            ])
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
