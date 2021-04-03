import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Form_ extends StatefulWidget {
  @override
  Form_State createState() => Form_State();
}

class Form_State extends State<Form_> {
  String word, initial = 'Reverse word';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            Text(
              'Reverse word',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Text(
                'Reversing',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          height: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.black38,
                              width: 1.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 27, horizontal: 40),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Word",
                              labelText: "Word",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            cursorColor: Colors.deepPurple,
                            onChanged: (value) {
                              setState(() {
                                word = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        initial,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.deepPurpleAccent),
                      child: RaisedButton(
                        child: Text(
                          "Reverse",
                          style: TextStyle(fontSize: 17),
                        ),
                        color: Colors.deepPurpleAccent,
                        elevation: 0,
                        textColor: Colors.white,
                        hoverColor: Colors.deepPurpleAccent,
                        onPressed: () {
                          setState(() {
                            word = reverseWord(word);
                            initial = word;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String reverseWord(String initial){
    return initial.split('').reversed.join();
  }
}

