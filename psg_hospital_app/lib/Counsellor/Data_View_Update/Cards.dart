import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Date_Widget.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Time.dart';

import 'CheckBox.dart';
import 'DropDownEdit.dart';
import 'TextBoxEdit.dart';

class CounsellorCards extends StatefulWidget {
  final String Heading;
  final String Data;
  final int index;
  final String Colval;
  final String tag;
  CounsellorCards(this.Heading, this.Data, this.index, this.Colval, this.tag);

  @override
  _CounsellorCardsState createState() => _CounsellorCardsState();
}

class _CounsellorCardsState extends State<CounsellorCards> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    widget.Heading,
                    style: GoogleFonts.lato(
                      color: const Color(0xff4A64FE),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                show
                    ? Padding(
                        padding: EdgeInsets.all(
                          15.0,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (widget.tag == "DROP1" ||
                                widget.tag == "DROP2" ||
                                widget.tag == "DROP3" ||
                                widget.tag == "DROP4" ||
                                widget.tag == "DROP5" ||
                                widget.tag == "DROP6" ||
                                widget.tag == "DROP7" ||
                                widget.tag == "DROP8" ||
                                widget.tag == "DROP9" ||
                                widget.tag == "DROP10") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CounsellorDropDownWidget(
                                              widget.Heading,
                                              widget.index,
                                              widget.Colval,
                                              widget.tag)));
                            }
                            if (widget.tag == "SCORETEXT" ||
                                widget.tag == "HABITTEXT" ||
                                widget.tag == "TIMETEXT" ||
                                widget.tag == "ECOTEXT") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CounsellorTextBoxWidget(
                                              widget.Heading,
                                              widget.index,
                                              widget.Colval,
                                              widget.tag)));
                            }

                            if (widget.tag == "CLINICBOX" ||
                                widget.tag == "RESPBOX") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CounsellorCheckBoxWidget(
                                              widget.Heading,
                                              widget.index,
                                              widget.Colval,
                                              widget.tag,
                                              widget.Data)));
                            }
                            if (widget.tag == "INVDATE") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CounsellorDateWidget(
                                            widget.Heading,
                                            widget.index,
                                            widget.Colval,
                                            widget.tag,
                                          )));
                            }
                            if (widget.tag == "SETTIME") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DietitianTimeWidget(
                                            widget.Heading,
                                            widget.index,
                                            widget.Colval,
                                            widget.tag,
                                          )));
                            }
                          },
                          child: const Icon(
                            Icons.edit,
                            color: Color(0xff4A64FE),
                            size: 25,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (show) {
                    show = false;
                  } else {
                    show = true;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Text(widget.Data == "" ? "Empty" : widget.Data),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 7,
                            spreadRadius: 3.5)
                      ]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
