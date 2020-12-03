import 'package:expense_tracker/data.dart';
import 'package:expense_tracker/widgets/cardSection.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:expense_tracker/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){
  runApp(MaterialApp(
      home : HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection())
        ],
      ),
    );
  }
}
