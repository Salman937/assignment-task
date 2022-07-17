import 'dart:ui';

import 'package:flutter/material.dart';

class BillCalculator extends StatefulWidget {
  @override
  State<BillCalculator> createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  int totalBill = 0;
  int num = 1;
  double tip = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: const Color.fromARGB(255, 161, 131, 35),
                    width: 5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Total Bill Per Head',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${((totalBill * tip) / 100) + totalBill / num} Rs',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: const Color.fromARGB(255, 161, 131, 35),
                    width: 5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            totalBill = int.parse(value);
                          });
                        },
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Split By',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (num > 1) num--;
                                });
                              },
                              icon: Icon(Icons.arrow_back_ios_new_rounded)),
                          Text(
                            '$num',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                num++;
                              });
                            },
                            icon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tip is ${tip.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Slider(
                        activeColor: Colors.black,
                        inactiveColor: Colors.black,
                        value: tip,
                        onChanged: (value) {
                          setState(() {
                            tip = value;
                          });
                        },
                        min: 0,
                        max: 100,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
