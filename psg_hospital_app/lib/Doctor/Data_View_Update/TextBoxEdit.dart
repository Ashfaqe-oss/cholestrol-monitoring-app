import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Doctor_View.dart';

import '../../widget/button_widget.dart';
import 'View_Values.dart';

class TextBoxWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;

  TextBoxWidget(this.heading, this.index, this.type, this.tag);

  @override
  _TextBoxWidgetState createState() => _TextBoxWidgetState();
}

class _TextBoxWidgetState extends State<TextBoxWidget> {
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
                  Doctor_View Update = Doctor_View();

                  if (widget.tag == "WOMEN") {
                    Update.UpdateWomenSpecific(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "FAMILY") {
                    Update.UpdateFamilyHistory(widget.index.toString(),
                        widget.type, jsonEncode(DocView.Siblings));
                  }
                  if (widget.heading == "Age" && widget.tag == "SIB") {
                    DocView.Siblings[0][widget.index][0] = txtfield.text;
                    Update.UpdateSiblings(widget.index.toString(), widget.type,
                        jsonEncode(DocView.Siblings));
                  }
                  if (widget.heading == "Hypertension" && widget.tag == "SIB") {
                    DocView.Siblings[0][widget.index][1] = txtfield.text;
                    Update.UpdateSiblings(widget.index.toString(), widget.type,
                        jsonEncode(DocView.Siblings));
                  }
                  if (widget.heading == "Diabetes Mellitus" &&
                      widget.tag == "SIB") {
                    DocView.Siblings[0][widget.index][2] = txtfield.text;
                    Update.UpdateSiblings(widget.index.toString(), widget.type,
                        jsonEncode(DocView.Siblings));
                  }
                  if (widget.heading == "Heart Disease" &&
                      widget.tag == "SIB") {
                    DocView.Siblings[0][widget.index][3] = txtfield.text;
                    Update.UpdateSiblings(widget.index.toString(), widget.type,
                        jsonEncode(DocView.Siblings));
                  }
                  if (widget.heading == "Others" && widget.tag == "SIB") {
                    DocView.Siblings[0][widget.index][4] = txtfield.text;
                    Update.UpdateSiblings(widget.index.toString(), widget.type,
                        jsonEncode(DocView.Siblings));
                  }
                  if (widget.tag == "CLINICTEXT") {
                    Update.UpdateClinicInfo(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "RESPTEXT") {
                    Update.UpdateRespInfo(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "INVTEXT") {
                    Update.UpdateDigaInv(
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
