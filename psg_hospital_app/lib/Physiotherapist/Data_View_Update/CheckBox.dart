import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';

import '../../widget/button_widget.dart';

class PhysioCheckBoxWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;
  final String data;

  PhysioCheckBoxWidget(
      this.heading, this.index, this.type, this.tag, this.data);

  @override
  _PhysioCheckBoxWidgetState createState() => _PhysioCheckBoxWidgetState();
}

class _PhysioCheckBoxWidgetState extends State<PhysioCheckBoxWidget> {
  late bool UpdatedVal = widget.data == "true" ? true : false;
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
                  child: CheckboxListTile(
                    title: Text(widget.heading),
                    value: UpdatedVal,
                    onChanged: (newValue) {
                      setState(() {
                        if (UpdatedVal) {
                          UpdatedVal = false;
                        } else {
                          UpdatedVal = true;
                        }
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Physio_View Update = Physio_View();
                  if (widget.tag == "ASSBOX") {
                    Update.UpdateAssessment(widget.index.toString(),
                        widget.type, UpdatedVal.toString());
                  }
                  if (widget.tag == "GOALBOX") {
                    Update.UpdateGoals(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "DAY1BOX") {
                    Update.UpdateDay1(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "DAY2BOX") {
                    Update.UpdateDay2(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "DAY3BOX") {
                    Update.UpdateDay3(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "DAY4BOX") {
                    Update.UpdateDay4(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "DAY5BOX") {
                    Update.UpdateDay5(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "SIXBOX") {
                    Update.UpdateSix(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
                  }
                  if (widget.tag == "DISBOX") {
                    Update.UpdateDischarge(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
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
