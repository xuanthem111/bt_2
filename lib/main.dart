import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp() : super();

  Widget createRow(String text1, String text2, IconData icon) {
    double size = 20;
    return Column(
      children: [
        Icon(
          icon,
          textDirection: TextDirection.ltr,
          color: Colors.amber,
          size: 40,
        ),
        Text(
          text1,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: size, color: Colors.brown),
        ),
        Text(
          text2,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: size, color: Colors.brown),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        textDirection: TextDirection.ltr,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.blue[200]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 30, 10),
              child: Center(
                child: Text(
                  "Strawberry Pavlova",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.blue[200]),
            child: Center(
              child: Text(
                "Pavlova is a mering-based \n desset named after the Russian \n ballerine Anana Pavlova. \n Pavlova featues a crips crust and \n soft, light inside ,topped width fruit and whipped cream.",
                style: TextStyle(fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.blue[200]),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        Icon(
                          Icons.star,
                          textDirection: TextDirection.ltr,
                        ),
                        Icon(
                          Icons.star,
                          textDirection: TextDirection.ltr,
                        ),
                        Icon(
                          Icons.star,
                          textDirection: TextDirection.ltr,
                        ),
                        Icon(
                          Icons.star,
                          textDirection: TextDirection.ltr,
                        ),
                        Icon(
                          Icons.star,
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text("170 Reviews",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                        textDirection: TextDirection.ltr),
                  )
                ],
              ),
            )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.blue[200]),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: [
                    createRow("25 min", "PREP:", Icons.book),
                    SizedBox(
                      width: 30,
                    ),
                    createRow("COOK:", "1 hr", Icons.lock_clock),
                    SizedBox(
                      width: 30,
                    ),
                    createRow("FEEDS:", "4-6", Icons.food_bank)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
