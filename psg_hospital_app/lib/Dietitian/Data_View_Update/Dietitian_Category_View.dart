import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import 'View_Diet_Pattern.dart';
import 'View_FoodPreference.dart';
import 'View_FoodQuantity.dart';
import 'View_Section1.dart';

class Category_Dietitan_View extends StatefulWidget {
  const Category_Dietitan_View({Key? key}) : super(key: key);

  @override
  _Category_Dietitan_ViewState createState() => _Category_Dietitan_ViewState();
}

class _Category_Dietitan_ViewState extends State<Category_Dietitan_View> {
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
                                builder: (context) => View_Section1()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Section 1",
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
                                builder: (context) => View_DietPattern()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Diet Pattern",
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
                                builder: (context) => View_Quantity()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Food Quantity",
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
                                builder: (context) => View_Preference()),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Food Preference",
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
