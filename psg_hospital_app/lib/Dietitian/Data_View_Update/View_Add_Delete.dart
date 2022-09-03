import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Dietitian_Category/Dietitian_Category.dart';

import 'Dietitian_Category_View.dart';

class DietitianAddDeleteEdit extends StatelessWidget {
  const DietitianAddDeleteEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A64FE),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "DIETITIAN",
          style: GoogleFonts.lato(
            color: const Color(0xffffffff),
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Category_Dietitan()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff4A64FE),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ADD INFORMATION",
                        style: TextStyle(
                            color: Color(0xff4A64FE),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Category_Dietitan_View()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff4A64FE),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "VIEW INFORMATION",
                        style: TextStyle(
                            color: Color(0xff4A64FE),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff4A64FE),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "DELETE INFORMATION",
                        style: TextStyle(
                            color: Color(0xff4A64FE),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
