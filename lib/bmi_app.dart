
import 'package:bmi_calculator_flutter/api/bmi_api.dart';
import 'package:bmi_calculator_flutter/screens/bmi_home.dart';
import 'package:bmi_calculator_flutter/screens/bmi_home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class BmiApp extends StatelessWidget {
  final _api = BmiApi(Client());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BmiHome(BmiHomeBloc(_api)),
    );
  }
}