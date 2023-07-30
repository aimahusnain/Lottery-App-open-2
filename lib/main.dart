import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  _MyAppState createState() => _MyAppState();
}

Random random = Random();
int x = 0;
int lottery = 6;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Center(child: Text("Welcome To Lot Lottery")),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is $lottery")),
            SizedBox(
              height: 10,
            ),
            Container(
              height: x == lottery ? 400 : 250,
              width: 300,
              decoration: BoxDecoration(
                  color: x == lottery
                      ? Color(0xff9aff00)
                      : Colors.blueGrey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(17)),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: x == lottery
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Icon(
                              Icons.done_outline_outlined,
                              color: Color(0xffffffff),
                              size: 47,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Congratulation you have won the lottery, your number is $x\n",
                              textAlign: TextAlign.center,
                            )
                          ])
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Better Luck! next time. Your number is \n$x Try Again!👍",
                              textAlign: TextAlign.center,
                            )
                          ]),
              ),
            )
          ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //print(random.nextInt(10).toString());
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: Icon(Icons.refresh)),
    ));
  }
}
