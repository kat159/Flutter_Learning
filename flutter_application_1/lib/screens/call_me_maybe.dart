import 'package:flutter/material.dart';
import 'package:flutter_application_1/layouts/bodies/business_card.dart';
import 'package:flutter_application_1/layouts/bodies/predictor.dart';
import 'package:flutter_application_1/layouts/bodies/resume.dart';
import 'package:flutter_application_1/styles.dart';


class CallMeMaybe extends StatelessWidget {

  final String title;

  CallMeMaybe({Key? key, required this.title}) : super(key: key);

  static const tabs = [
    Tab(icon: Icon( Icons.face, ), ),
    Tab(icon: Icon( Icons.description, ), ),
    Tab(icon: Icon( Icons.help_outline, ), ),
  ];

  final screens = [BusinessCardScreen(), ResumeScreen(), PredictorScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title, style: Styles.appBarDefault,),
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: screens),
      )
    );
  }
}
