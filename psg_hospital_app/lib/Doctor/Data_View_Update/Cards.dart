import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/CheckBox.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Date_Widget.dart';

import 'DropDownEdit.dart';
import 'TextBoxEdit.dart';

class Cards extends StatefulWidget {
  final String Heading;
  final String Data;
  final int index;
  final String Colval;
  final String tag;
  Cards(this.Heading, this.Data, this.index, this.Colval, this.tag);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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
                                widget.tag == "DROP7") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DropDownWidget(
                                          widget.Heading,
                                          widget.index,
                                          widget.Colval,
                                          widget.tag))).then((value) {
                                Navigator.pop(context);
                              });
                            }
                            if (widget.tag == "WOMEN" ||
                                widget.tag == "FAMILY" ||
                                widget.tag == "SIB" ||
                                widget.tag == "CLINICTEXT" ||
                                widget.tag == "RESPTEXT" ||
                                widget.tag == "INVTEXT") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TextBoxWidget(
                                          widget.Heading,
                                          widget.index,
                                          widget.Colval,
                                          widget.tag))).then((value) {
                                Navigator.pop(context);
                              });
                            }

                            if (widget.tag == "CLINICBOX" ||
                                widget.tag == "RESPBOX") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CheckBoxWidget(
                                          widget.Heading,
                                          widget.index,
                                          widget.Colval,
                                          widget.tag,
                                          widget.Data))).then((value) {
                                Navigator.pop(context);
                              });
                            }
                            if (widget.tag == "INVDATE") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DateWidget(
                                            widget.Heading,
                                            widget.index,
                                            widget.Colval,
                                            widget.tag,
                                          ))).then((value) {
                                Navigator.pop(context);
                              });
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
