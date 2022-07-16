import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/predictor.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PredictorScreen extends StatefulWidget {
  const PredictorScreen({Key? key}) : super(key: key);

  @override
  State<PredictorScreen> createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  String answer = Predictor.getRandomResponse();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textEnormous('Call Me... Maybe?'),
        const SizedBox(height: 20,),
        promptTappable(),
        const SizedBox(height: 20,),
        textEnormous(answer),
      ],
    );
  }

  Widget promptTappable() {
    return Wrap(
      children: [
        textDefault('Ask a question... '),
        GestureDetector(
          onTap: () {
            setState(() {
              answer = Predictor.getRandomResponse();
            });
          },
          child: const Text('tap', style: Styles.linkDefault,),
        ),
        textDefault(' for the answer.'),
      ],
    );
  }

  Widget textEnormous(String text) {
    return Text(
      text,
      style: Styles.textEnormous,
    );
  }

  Widget textDefault(String text) {
    return Text(
      text,
      style: Styles.textDefault,
    );
  }
}
