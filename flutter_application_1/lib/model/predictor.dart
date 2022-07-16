

import 'dart:math';

class Predictor {

  static final _random = Random();
  static final responses = [
    'Of course',
    'Sorry it\'s doubtless',
    'Definitely',
    'Maybe indead',
    'The future is uncertain',
    'No way',
    'Unlikely but possible',
    'Quite hopeless',
  ];

  static String getRandomResponse() {
    return responses[_random.nextInt(8)];
  }
}