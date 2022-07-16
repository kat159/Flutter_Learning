import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/components/triggers/tapTrigger/urlLauncher.dart';
import 'package:flutter_application_1/model/applicant.dart';
import 'package:flutter_application_1/styles.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets(context),
      child: Column(children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset('assets/images/avatar.png'),
        ),
        const SizedBox(height: 20,),
        personalInfo(context),
      ],)
    );
  }

  EdgeInsets edgeInsets(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return EdgeInsets.only(left: screenWidth * 0.2, right: screenWidth * 0.2);
    } else {
      return EdgeInsets.only(top: screenHeight * 0.1, left: screenWidth * 0.05, right: screenWidth * 0.05);
    }
  }

  Widget personalInfo(BuildContext context) {
    final info = Applicant.getPersonalInfo();
    return Column(
      children: [
        Text(info['fullName'], style: Styles.headerHuge),
        const SizedBox(height: 10),
        // Text(fullName, style: TextStyle(fontSize: MediaQuery.of(context).size.width),),
        personalInfoText(info['profession'],),
        const SizedBox(height: 10),
        UrlLauncher(url: 'sms:' + info['phoneNumber'], child: personalInfoLink(info['phoneNumber'])),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UrlLauncher(url: info['githubAdress'], child: personalInfoLink(info['githubAdressText'])),
            personalInfoText(info['email']),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget personalInfoText(String text) {
    return Text(text, style: Styles.textDefault, );
  }

  Widget personalInfoLink(String text) {
    return Text(text, style: Styles.linkDefault, );
  }

}
