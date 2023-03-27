// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, duplicate_ignore, prefer_interpolation_to_compose_strings, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:my_project/Payment.dart';

class DivideMoney extends StatefulWidget {
  const DivideMoney({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DivideMoneyState createState() => _DivideMoneyState();
}

class _DivideMoneyState extends State<DivideMoney> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade500,
        //  title: const Text("قطة"),
      ),
      body: Column(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "ادخل الحساب ",
                hintTextDirection: TextDirection.rtl,
              ),
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              controller: num1controller,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "ادخل عددكم",
                hintTextDirection: TextDirection.rtl,
              ),
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              controller: num2controller,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("احسبها"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  side: BorderSide(
                      color: Color.fromARGB(45, 255, 230, 0), width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  shadowColor: Colors.lightBlue,
                ),
                onPressed: () {
                  setState(
                    () {
                      double sum = double.parse(num1controller.text) /
                          double.parse(num2controller.text);
                      result = sum.toString();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            appBar: AppBar(
                              backgroundColor: Colors.brown.shade500,
                            ),
                            body: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(
                                    "القطة  $result ريال ",
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          double sum = double.parse(
                                                  num1controller.text) /
                                              double.parse(num2controller.text);
                                          result = sum.toString();
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => Scaffold(
                                                appBar: AppBar(
                                                  backgroundColor:
                                                      Colors.brown.shade500,
                                                ),
                                                body: PaymentPage(),
                                              ),
                                            ),
                                          );
                                        });
                                      },
                                      child: Text("ادفع عن الطريق البطاقة"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.brown,
                                        side: BorderSide(
                                            color:
                                                Color.fromARGB(45, 255, 230, 0),
                                            width: 5),
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontStyle: FontStyle.normal),
                                        shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        shadowColor: Colors.lightBlue,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => Scaffold(
                                                appBar: AppBar(
                                                  backgroundColor:
                                                      Colors.brown.shade500,
                                                ),
                                                body: Column(
                                                  children: [
                                                    const Text(
                                                      "رقم الايبان",
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8.0),
                                                    TextFormField(
                                                      decoration:
                                                          const InputDecoration(
                                                        hintText:
                                                            "ادخل رقم الايبان",
                                                        hintTextDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      // textDirection: TextDirection.rtl,
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text("ارسلها "),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Colors.brown,
                                                        side: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    45,
                                                                    255,
                                                                    230,
                                                                    0),
                                                            width: 5),
                                                        textStyle:
                                                            const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 25,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal),
                                                        shape: BeveledRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        shadowColor:
                                                            Colors.lightBlue,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                      },
                                      child: Text("شاركها"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.brown,
                                        side: BorderSide(
                                            color:
                                                Color.fromARGB(45, 255, 230, 0),
                                            width: 5),
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontStyle: FontStyle.normal),
                                        shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        shadowColor: Colors.lightBlue,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
