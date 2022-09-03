import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/button_widget.dart';
import 'Physio_View.dart';

class PhysioTextBoxWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;

  PhysioTextBoxWidget(this.heading, this.index, this.type, this.tag);

  @override
  _PhysioTextBoxWidgetState createState() => _PhysioTextBoxWidgetState();
}

class _PhysioTextBoxWidgetState extends State<PhysioTextBoxWidget> {
  TextEditingController txtfield = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.heading,
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    controller: txtfield,
                    onChanged: (value) {},
                    cursorColor: const Color(0xff4A64FE),
                    style: GoogleFonts.lato(
                      color: const Color(0xff4A64FE),
                      fontSize: 16.0,
                    ),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: Color(0xff4A64FE)),
                      focusColor: const Color(0xff4A64FE),
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xff4A64FE)),
                      ),
                      labelText: "",
                      prefixIcon: const Icon(
                        Icons.edit,
                        size: 18,
                        color: Color(0xff4A64FE),
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
                  Physio_View Update = Physio_View();
                  if (widget.tag == "ASSTEXT") {
                    Update.UpdateAssessment(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "GOALTEXT") {
                    Update.UpdateGoals(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "DAY1TEXT") {
                    Update.UpdateDay1(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "DAY2TEXT") {
                    Update.UpdateDay2(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "DAY3TEXT") {
                    Update.UpdateDay3(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "DAY4TEXT") {
                    Update.UpdateDay4(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "DAY5TEXT") {
                    Update.UpdateDay5(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "SIXTEXT") {
                    Update.UpdateSix(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "DISTEXT") {
                    Update.UpdateDischarge(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  Navigator.pop(context);
                },
                child: ButtonWidget(
                  title: 'Update',
                  hasBorder: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
