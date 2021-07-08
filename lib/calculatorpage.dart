import 'package:calculator_app/widgets/boxes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int firstNum;
  late int secondNum;
  late String history = "";
  late String textToDisplay = "";
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print("btnVal");
    if (btnVal == "C") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "0";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "0";
      history = "";
    }
    if (btnVal == "") {
      res = "0";
      history = "0";
    } else if (btnVal == "+/-") {
      if (textToDisplay[0] != "-") {
        res = "-" + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "X" ||
        btnVal == "/") {
      firstNum = int.parse(textToDisplay);
      res = "";
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.parse(textToDisplay);
      if (operation == "+") {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "-") {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "X") {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "/") {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Container(
              margin: EdgeInsets.only(bottom: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    history,
                    // ignore: prefer_const_constructors
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    textToDisplay,
                    // ignore: prefer_const_constructors
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),

            // ignore: prefer_const_constructors
            Divider(
              height: 20,
              color: Colors.white,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      ListCard(
                        numb: "AC",
                        textColor: Colors.yellow,
                        textSize: 23,
                        callBack: btnOnClick,
                      ),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "C",
                          textColor: Colors.yellow,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "<",
                          textColor: Colors.yellow,
                          textSize: 30,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "/",
                          textColor: Colors.yellow,
                          textSize: 25,
                          callBack: btnOnClick),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "7",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                        numb: "8",
                        textColor: Colors.white,
                        textSize: 25,
                        callBack: btnOnClick,
                      ),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "9",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "X",
                          textColor: Colors.yellow,
                          textSize: 25,
                          callBack: btnOnClick),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "4",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "5",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "6",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "-",
                          textColor: Colors.yellow,
                          textSize: 60,
                          callBack: btnOnClick),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "1",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "2",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "3",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "+",
                          textColor: Colors.yellow,
                          textSize: 30,
                          callBack: btnOnClick),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "+/-",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "0",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: ".",
                          textColor: Colors.white,
                          textSize: 25,
                          callBack: btnOnClick),
                      // ignore: prefer_const_constructors
                      ListCard(
                          numb: "=",
                          textColor: Colors.yellow,
                          textSize: 45,
                          callBack: btnOnClick),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
