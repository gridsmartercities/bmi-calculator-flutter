import 'package:bmi_calculator_flutter/screens/bmi_home_bloc.dart';
import 'package:flutter/material.dart';

class BmiHome extends StatefulWidget {
  final BmiHomeBloc _bloc;

  const BmiHome(this._bloc);

  @override
  _BmiHomeState createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Please enter your height & weight",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Height (cm)"),
                  Container(
                    width: 60,
                    child: TextField(
                      key: ValueKey("height"),
                      textAlign: TextAlign.center,
                      onChanged: widget._bloc.heightChanged,
                      controller: widget._bloc.heightTextController,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Weight (kg)"),
                  Container(
                    width: 60,
                    child: TextField(
                      key: ValueKey("weight"),
                      textAlign: TextAlign.center,
                      onChanged: widget._bloc.weightChanged,
                      controller: widget._bloc.weightTextController,
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 10),
            StreamBuilder<bool>(
                stream: widget._bloc.buttonEnabled,
                builder: (context, snapshot) {
                  return RaisedButton(
                    child: Text("Submit"),
                    onPressed: snapshot?.data == true ? () => widget._bloc.submitDetails() : null,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
