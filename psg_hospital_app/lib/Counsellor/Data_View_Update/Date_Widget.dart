import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widget/button_widget.dart';
import 'Counsellor_View.dart';

class CounsellorDateWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String Colval;
  final String tag;

  CounsellorDateWidget(this.heading, this.index, this.Colval, this.tag);
  @override
  _CounsellorDateWidgetState createState() => _CounsellorDateWidgetState();
}

class _CounsellorDateWidgetState extends State<CounsellorDateWidget> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    super.initState();
    dateinput.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: dateinput,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color(0xff4A64FE)),
                  focusColor: Color(0xff4A64FE),
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xff4A64FE)),
                  ),
                  labelText: "Date",
                  prefixIcon: const Icon(
                    Icons.arrow_right,
                    size: 20,
                    color: Color(0xff4A64FE),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1800),
                      lastDate: DateTime(2101));
                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    setState(() {
                      dateinput.text = formattedDate;
                    });
                  } else {
                    print("Date is not selected");
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Counsellor_View Update = Counsellor_View();
                  if (widget.tag == "INVDATE") {
                    //Update.UpdateDigaInv(widget.index.toString(), widget.Colval,
                    //  dateinput.text.toString());
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
