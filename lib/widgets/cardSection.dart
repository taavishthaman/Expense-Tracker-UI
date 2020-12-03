import 'package:expense_tracker/data.dart';
import 'package:flutter/material.dart';

import 'card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, ),
          alignment: Alignment.topLeft,
          child: Text('Selected Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Expanded(child: ListView.builder(
          itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i){
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(color: primaryColor, boxShadow: customShadow, borderRadius: BorderRadius.circular(20)),
            child: Stack(children: <Widget>[
              Positioned.fill(
                left: -300,
                top: -90,
                bottom: -90,
                child: Container(decoration: BoxDecoration(
                  boxShadow: customShadow,
                    shape: BoxShape.circle, color: Colors.white38),
              ),),
              Positioned.fill(
                top: 120,
                bottom: -150,
                child: Container(decoration: BoxDecoration(
                    boxShadow: customShadow,
                    shape: BoxShape.circle, color: Colors.white38),
                ),),
              CardDetails()
            ],),
          );
        }),)
      ],
    );
  }
}
