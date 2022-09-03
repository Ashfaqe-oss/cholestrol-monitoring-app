import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/button_widget.dart';
import 'Physio_View.dart';

class PhysioDropDownWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String Colval;
  final String tag;

  PhysioDropDownWidget(this.heading, this.index, this.Colval, this.tag);

  @override
  _PhysioDropDownWidgetState createState() => _PhysioDropDownWidgetState();
}

class _PhysioDropDownWidgetState extends State<PhysioDropDownWidget> {
  String UpdatedVal = "";

  final List<String> Marital_Status = [
    'Married',
    'Unmarried',
    'Divorced',
  ];

  String _currentMaritalType = "";
  final List<String> Liveswith = [
    'Joint Family',
    'Nuclear Family',
    'Micro Nuclear Family',
  ];
  String _currentLiveswithType = "";
  final List<String> Accommodation = [
    'Rural',
    'Urban',
    'Crowded',
    'Isolated',
    'Ground Floor',
    'Stairs - Steps',
    'Stairs - Flights',
  ];
  String _currentAccommodationType = "";
  final List<String> AssistiveEquip = [
    'Hearing aids',
    'Spectacles',
    'Mobility aids',
  ];
  String _currentAssistiveEquipType = "";
  final List<String> WorkingStatus = [
    'Sedentary',
    'Mobile',
    'Strenuous',
  ];
  String _currentWorkingStatusType = "";
  final List<String> WorkingEnvironment = [
    'Calm',
    'Noisy',
    'Polluted',
    'Hygiene',
  ];
  String _currentWorkingEnvironmentType = "";
  final List<String> ProbAtWork = [
    'Fear of Angina',
    'Fear of Dyspnea',
    'Fear of Palpitations',
    'Others',
  ];
  String _currentProbAtWorkType = "";
  final List<String> Hobbies = [
    'Indoor-Gaming',
    'Outdoor-Gaming',
    'Sedentary Hobbies',
    'Others',
  ];
  final List<String> GivenTo = ["Patient", "Patient Attendants", "Care Giver"];
  List<String> FeedBack = ["Yes", "No"];

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
                      value: WorkingStatus[0],
                      items: WorkingStatus.map((gen) {
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
                      value: WorkingEnvironment[0],
                      items: WorkingEnvironment.map((gen) {
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
                      value: ProbAtWork[0],
                      items: ProbAtWork.map((gen) {
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
                      value: Hobbies[0],
                      items: Hobbies.map((gen) {
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
                      value: GivenTo[0],
                      items: GivenTo.map((gen) {
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
                      value: FeedBack[0],
                      items: FeedBack.map((gen) {
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
                  Physio_View Update = Physio_View();
                  if (widget.tag == "DROP1" ||
                      widget.tag == "DROP2" ||
                      widget.tag == "DROP3" ||
                      widget.tag == "DROP4") {
                    Update.UpdateAssessment(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP5") {
                    Update.UpdateDay1(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP6") {
                    Update.UpdateDischarge(
                        widget.index.toString(), widget.Colval, UpdatedVal);
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
