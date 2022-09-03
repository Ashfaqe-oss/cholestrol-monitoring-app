import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/button_widget.dart';
import 'Dietitian_View.dart';

class DietitianDropDownWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String Colval;
  final String tag;

  DietitianDropDownWidget(this.heading, this.index, this.Colval, this.tag);

  @override
  _DietitianDropDownWidgetState createState() =>
      _DietitianDropDownWidgetState();
}

class _DietitianDropDownWidgetState extends State<DietitianDropDownWidget> {
  String UpdatedVal = "";

  List<String> Food = ["Tea", "Coffee", "Milk", "Others"];
  List<String> Milk = ["With Milk", "Without Milk"];
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
                      value: Food[0],
                      items: Food.map((gen) {
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
                      value: Milk[0],
                      items: Milk.map((gen) {
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
                  Dietitian_View Update = Dietitian_View();
                  if (widget.tag == "DROP1" || widget.tag == "DROP2") {
                    Update.UpdatePattern(
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
