import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/applicant.dart';
import 'package:flutter_application_1/styles.dart';

class ResumeScreen extends StatelessWidget {

  final applicantInfo = Applicant.getPersonalInfo();
  final priorPisionDataList = Applicant.getPriorPositions();

  ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              personalInfo(),
              const SizedBox(height: 10.0,),
              priorPisitionCol(paddingTop: 10.0),
            ]         
          )
        ),
      );
  }

  Widget personalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(applicantInfo['fullName'], style: Styles.headerLarge,),
        defaultText(applicantInfo['email']),
        defaultText(applicantInfo['githubAdress']),
      ],
    );
  }

  Widget priorPisitionCol({paddingTop=0.0, paddingBottom=0.0}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var p in priorPisionDataList) 
          Padding(
            padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom), 
            child: priorPisition(p['positionTitle'], p['companyName'], p['timePeriod'], p['location'], p['description'])
          )
      ],
    );
  }

  Widget priorPisition(positionTitle, companyName, timePeriod, location, description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(positionTitle, style: Styles.headerDefault,),
        const SizedBox(height: 7,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            defaultText(companyName),
            defaultText(timePeriod),
            defaultText(location),
          ],
        ),
        const SizedBox(height: 7,),
        defaultText(description),
      ],
    );
  }

  Widget defaultText(text) {
    return Text(text, style: Styles.textDefault);
  }

}
