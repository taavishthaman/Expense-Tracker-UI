import 'package:expense_tracker/data.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(alignment: Alignment.topLeft, child:Container(
            width: 250,
            child: Image.asset('images/mastercardlogo.png')
          )
        ),
        Align(alignment: Alignment.bottomRight, child: Padding(
          padding: const EdgeInsets.all(20.0),
            child: Container(height: 50, width: 80, decoration: BoxDecoration(color: primaryColor, boxShadow: customShadow, borderRadius: BorderRadius.circular(50)),)
        )
        ),
        Align(alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: [
                    Text('**** **** **** ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('1930', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                Text('PLATINUM CARD', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              ],
            )
         ),
        )
      ],
    );
  }
}
