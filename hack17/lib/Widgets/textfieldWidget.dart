import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textfieldWidget(textt) {
  return (Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                          decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                   wordSpacing: 0.3,
                                ),
                                hintText: textt,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff006637),
                                ),
                                fillColor: Colors.white70),
                          ),
                        )
                        );
}
