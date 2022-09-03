import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Dietitian_View.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../widget/Label.dart';

class DietitianTimeWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;

  DietitianTimeWidget(this.heading, this.index, this.type, this.tag);

  @override
  _DietitianTimeWidgetState createState() => _DietitianTimeWidgetState();
}

class _DietitianTimeWidgetState extends State<DietitianTimeWidget> {
  TimeOfDay SelectTime = TimeOfDay.now();
  String UpdatedVal = "";
  selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: SelectTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != SelectTime) {
      setState(() {
        SelectTime = timeOfDay;
        UpdatedVal =
            SelectTime.hour.toString() + " : " + SelectTime.minute.toString();
      });
    }
  }

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
          body: Stack(
            children: [
              SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(children: [
                  Container(
                    child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Time",
                              style: GoogleFonts.lato(
                                color: const Color(0xff4A64FE),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Heading("Early Morning"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectTime(context);
                          });
                        },
                        child: const Text("Choose Time"),
                      ),
                      Text("${SelectTime.hour}:${SelectTime.minute}"),
                      SizedBox(
                        height: 25.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Dietitian_View Update = Dietitian_View();
                          if (widget.tag == "SETTIME") {
                            Update.UpdatePattern(
                                widget.index.toString(),
                                widget.type,
                                "${SelectTime.hour}:${SelectTime.minute}");
                          }
                          Navigator.pop(context);
                        },
                        child: ButtonWidget(
                          title: 'Update ',
                          hasBorder: false,
                        ),
                      ),
                    ],
                  ),
                ]),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
