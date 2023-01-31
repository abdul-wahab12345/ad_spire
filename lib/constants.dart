import 'package:flutter/material.dart';
import 'dart:math' as math;

//---------colors---------------//

final _random = math.Random();

Color getRandomColor() => Color.fromRGBO(
      //or with fromRGBO with fourth arg as _random.nextDouble(),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1,
    );

const Color backgroundColor = Color.fromRGBO(30, 30, 30, 1);
const Color textColor = Color.fromRGBO(232, 232, 219, 1);
const Color darkTextColor = Color.fromRGBO(11, 11, 11, 11);

const gradient = LinearGradient(colors: [
  Color.fromRGBO(198, 60, 249, 1),
  Color.fromRGBO(50, 209, 233, 1),
]);
