import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Doctor_View.dart';

import '../../widget/button_widget.dart';

class CounsellorCheckBoxWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String type;
  final String tag;
  final String data;

  CounsellorCheckBoxWidget(
      this.heading, this.index, this.type, this.tag, this.data);

  @override
  _CounsellorCheckBoxWidgetState createState() =>
      _CounsellorCheckBoxWidgetState();
}

class _CounsellorCheckBoxWidgetState extends State<CounsellorCheckBoxWidget> {
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
                  Doctor_View Update = Doctor_View();
                  if (widget.tag == "CLINICBOX") {
                    Update.UpdateClinicInfo(widget.index.toString(),
                        widget.type, UpdatedVal.toString());
                  }
                  if (widget.tag == "RESPBOX") {
                    Update.UpdateRespInfo(widget.index.toString(), widget.type,
                        UpdatedVal.toString());
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
