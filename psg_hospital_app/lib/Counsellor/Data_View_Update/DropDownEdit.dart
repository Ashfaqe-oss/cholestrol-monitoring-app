import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_View_Update/Counsellor_View.dart';

import '../../widget/button_widget.dart';

class CounsellorDropDownWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String Colval;
  final String tag;

  CounsellorDropDownWidget(this.heading, this.index, this.Colval, this.tag);

  @override
  _CounsellorDropDownWidgetState createState() =>
      _CounsellorDropDownWidgetState();
}

class _CounsellorDropDownWidgetState extends State<CounsellorDropDownWidget> {
  String UpdatedVal = "";

  final List<String> Scores = [
    "All of the time",
    "Most of the time",
    "More than half the time",
    "Less than half the time",
    "Some of the time",
    "At no time"
  ];
  final List<String> Habit = ["Yes", "No"];

  final List<String> RelationshipStatus = [
    "Satisfied",
    "Neutral",
    "Not Satisfied",
    "Not Applicable"
  ];

  final List<String> Slt1 = [
    "Illiterate",
    "Literate, no formal education",
    "10th std",
    "12th std",
    "Bachelor's Degree",
    "Master's Degree",
    "Ph.D. or higher",
    "Others",
  ];

  final List<String> Slt2 = [
    "Single, never married",
    "Divorced",
    "Seperated",
    "Married or Cohabitating",
    "Widow or widower",
    "Others",
  ];

  final List<String> Slt3 = [
    "Full-time employment",
    "Self-employed",
    "Part-time employment",
    "Underemployed",
    "Full time freelancing",
    "Unemployed (looking for work)",
    "Unemployed (not looking for work)",
    "Student",
    "Inability to work"
  ];
  final List<String> Slt4 = ["1", "1 - 3", "4 - 6", "> 6"];

  final List<String> Slt5 = [
    "Professional degree",
    "Graduate or postgraduate",
    "Intermediate or post high school diploma",
    "High school certificate",
    "Middle school certificate",
    "Primary school certificate",
    "Illiterate"
  ];

  final List<String> Slt6 = [
    "Professional (white collar)",
    "Semi-professional",
    "Clerical, shop-owner/farm",
    "Skilled worker",
    "Semi-skilled worker",
    "Unskilled worker",
    "Unemployed"
  ];

  final List<String> Slt7 = [
    ">=52,734",
    "26,355-52,733",
    "19,759-26,354",
    "13,161-19,758",
    "7,887-13,160",
    "2,641-7,886",
    "≤2,640"
  ];

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
              widget.tag == "DROP1"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Scores[0],
                      items: Scores.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP2"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Habit[0],
                      items: Habit.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP3"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: RelationshipStatus[0],
                      items: RelationshipStatus.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP4"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt1[0],
                      items: Slt1.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP5"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt2[0],
                      items: Slt2.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP6"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt3[0],
                      items: Slt3.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP7"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt4[0],
                      items: Slt4.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP8"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt5[0],
                      items: Slt5.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP9"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt6[0],
                      items: Slt6.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP10"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Slt7[0],
                      items: Slt7.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Counsellor_View Update = Counsellor_View();
                  if (widget.tag == "DROP1") {
                    Update.UpdatePatientScore(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP2") {
                    Update.UpdateHabit(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP3") {
                    Update.UpdateTimeAct(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP4" ||
                      widget.tag == "DROP5" ||
                      widget.tag == "DROP6" ||
                      widget.tag == "DROP7" ||
                      widget.tag == "DROP8" ||
                      widget.tag == "DROP9" ||
                      widget.tag == "DROP10") {
                    Update.UpdateEco(
                        widget.index.toString(), widget.Colval, UpdatedVal);
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
