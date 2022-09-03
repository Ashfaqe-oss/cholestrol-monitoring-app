import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Dietitian_View.dart';

import '../../widget/button_widget.dart';

class DietitianTextBoxWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;

  DietitianTextBoxWidget(this.heading, this.index, this.type, this.tag);

  @override
  _DietitianTextBoxWidgetState createState() => _DietitianTextBoxWidgetState();
}

class _DietitianTextBoxWidgetState extends State<DietitianTextBoxWidget> {
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
                  Dietitian_View Update = Dietitian_View();
                  if (widget.tag == "SECTIONTEXT") {
                    Update.UpdateSection1(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "FOODTEXT") {
                    Update.UpdateFoodQuantity(
                        widget.index.toString(), widget.type, txtfield.text);
                  }
                  if (widget.tag == "PREFTEXT") {
                    Update.UpdateFoodPreference(
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
