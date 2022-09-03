import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Counsellor_View.dart';

import '../../widget/button_widget.dart';

class CounsellorTextBoxWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;

  CounsellorTextBoxWidget(this.heading, this.index, this.type, this.tag);

  @override
  _CounsellorTextBoxWidgetState createState() =>
      _CounsellorTextBoxWidgetState();
}

class _CounsellorTextBoxWidgetState extends State<CounsellorTextBoxWidget> {
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
                  Counsellor_View Update = Counsellor_View();
                  if (widget.tag == "SCORETEXT") {
                    Update.UpdatePatientScore(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "HABITEXT") {
                    Update.UpdateHabit(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "TIMETEXT") {
                    Update.UpdateTimeAct(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "ECOTEXT") {
                    Update.UpdateEco(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
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
