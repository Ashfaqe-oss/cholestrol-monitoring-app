import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import 'View_Eco.dart';
import 'View_Habits.dart';
import 'View_PatientScore.dart';
import 'View_TimeAct.dart';

class Category_View_Counsellor extends StatefulWidget {
  const Category_View_Counsellor({Key? key}) : super(key: key);

  @override
  _Category_View_CounsellorState createState() =>
      _Category_View_CounsellorState();
}

class _Category_View_CounsellorState extends State<Category_View_Counsellor> {
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
            "",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 25,
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
                                builder: (context) => PatientScore_View()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Patient Score",
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
                                builder: (context) => Habits_View()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Habit",
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
                                builder: (context) => TimeAct_View()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Socialising and Leisure Time Activities",
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
                                builder: (context) => Eco_View()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Socio Demographic & Economic Status",
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
                      GestureDetector(
                        onTap: () {
                          /*
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      Dietition_EntryField3()),
                            );
                             */
                        },
                        child: ButtonWidget(
                          title: 'Next',
                          hasBorder: false,
                        ),
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
