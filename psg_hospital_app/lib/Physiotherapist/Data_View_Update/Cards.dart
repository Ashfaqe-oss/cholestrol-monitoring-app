import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CheckBox.dart';
import 'Date_Widget.dart';
import 'DropDownEdit.dart';
import 'TextBoxEdit.dart';

class PhysioCards extends StatefulWidget {
  final String Heading;
  final String Data;
  final int index;
  final String Colval;
  final String tag;
  PhysioCards(this.Heading, this.Data, this.index, this.Colval, this.tag);

  @override
  _PhysioCardsState createState() => _PhysioCardsState();
}

class _PhysioCardsState extends State<PhysioCards> {
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
                                widget.tag == "DROP6") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PhysioDropDownWidget(
                                              widget.Heading,
                                              widget.index,
                                              widget.Colval,
                                              widget.tag))).then((value) {
                                Navigator.pop(context);
                              });
                            }
                            if (widget.tag == "ASSTEXT" ||
                                widget.tag == "GOALTEXT" ||
                                widget.tag == "DAY1TEXT" ||
                                widget.tag == "DAY2TEXT" ||
                                widget.tag == "DAY3TEXT" ||
                                widget.tag == "DAY4TEXT" ||
                                widget.tag == "DAY5TEXT" ||
                                widget.tag == "SIXTEXT" ||
                                widget.tag == "DISTEXT") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PhysioTextBoxWidget(
                                          widget.Heading,
                                          widget.index,
                                          widget.Colval,
                                          widget.tag))).then((value) {
                                Navigator.pop(context);
                              });
                            }

                            if (widget.tag == "ASSBOX" ||
                                widget.tag == "GOALBOX" ||
                                widget.tag == "DAY1BOX" ||
                                widget.tag == "DAY2BOX" ||
                                widget.tag == "DAY3BOX" ||
                                widget.tag == "DAY4BOX" ||
                                widget.tag == "DAY5BOX" ||
                                widget.tag == "SIXBOX" ||
                                widget.tag == "DISBOX") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PhysioCheckBoxWidget(
                                              widget.Heading,
                                              widget.index,
                                              widget.Colval,
                                              widget.tag,
                                              widget.Data))).then((value) {
                                Navigator.pop(context);
                              });
                            }
                            if (widget.tag == "ASSDATE" ||
                                widget.tag == "DAY1DATE" ||
                                widget.tag == "DAY2DATE" ||
                                widget.tag == "DAY3DATE" ||
                                widget.tag == "DAY4DATE" ||
                                widget.tag == "DAY5DATE" ||
                                widget.tag == "SIXDATE" ||
                                widget.tag == "DISDATE") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PhysioDateWidget(
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
