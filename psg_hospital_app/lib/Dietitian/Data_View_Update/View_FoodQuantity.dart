import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Dietitian_View.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/View_Values.dart';

class View_Quantity extends StatefulWidget {
  const View_Quantity({Key? key}) : super(key: key);

  @override
  _View_QuantityState createState() => _View_QuantityState();
}

class _View_QuantityState extends State<View_Quantity> {
  bool load = true;

  void loaddata() async {
    DieView.FoodQuantity = [];
    Dietitian_View Get = new Dietitian_View();
    await Get.GetFoodQuantity();
    setState(() {
      if (DieView.FoodQuantity[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  List<String> Section3 = [
    "Vegetables  intake per day ( approx no. of servings)",
    "Fruits intake per day (approx no.of servings)",
    "Do you eat raw vegetables? If yes what vegetable and how frequently?",
    "Frequency of eating - Pickles,Papads,Other salty items",
    "How frequently do you take nuts  and seeds?(everyday/most days a  week/rarely) Also mention if its plain/salted/masala added",
    "Frequency of taking Meat, Fish, Egg,Dairy products",
    "Frequency of eating sweets?",
    "Number of members in family",
    "Type of Oil used",
    "Quantity in litres per month",
    "Do you take any calcium/vitamin/ ayurvedic /herbal supplements?",
    "Frequency of eating out? What type of food?",
    "What Is that food you know is healthy but you don’t like ?",
    "What is the food you know is unhealthy but you could not  avoid?",
    "What is that food you wanted to have but not able to cook / find out?",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4A64FE),
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Food Quantity",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: load == false
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              Section3.length,
                              (index) => Column(children: [
                                    DietitianCards(
                                        Section3[index],
                                        DieView.FoodQuantity[0]
                                                ["DOC" + (index + 1).toString()]
                                            .toString(),
                                        0,
                                        "DOC" + (index + 1).toString(),
                                        "FOODTEXT"),
                                  ])),
                        ),
                      ]),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
