import 'package:bmi_calculator_flutter/api/bmi_api.dart';
import 'package:bmi_calculator_flutter/screens/bmi_home.dart';
import 'package:bmi_calculator_flutter/screens/bmi_home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bmi_calculator_flutter/main.dart';

import 'util/widgets.dart';

void main() {

  testWidgets('button disabled on startup', (tester) async {
    final screen = BmiHome(BmiHomeBloc(FakeApi()));

    await tester.pumpWidget(MaterialApp(home: screen));
    await tester.pumpAndSettle();

    expect(buttonEnabled(tester, "Submit"), isFalse);
  });

  testWidgets('button enabled when input is valid', (tester) async {
    final screen = BmiHome(BmiHomeBloc(FakeApi()));

    await tester.pumpWidget(MaterialApp(home: screen));
    await tester.pumpAndSettle();

    await tester.enterText(find.byKey(ValueKey("height")), '180');
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ValueKey("weight")), '80');
    await tester.pumpAndSettle();

    expect(buttonEnabled(tester, "Submit"), isTrue);
  });
}

class FakeApi implements BmiApi {
}
