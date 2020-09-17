import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

bool buttonEnabled(WidgetTester tester, String buttonTitle) =>
    tester.widget<MaterialButton>(findButton(buttonTitle)).enabled;

Finder findButton(String buttonTitle) => findTextInsideType(buttonTitle, RaisedButton);

Finder findTextInsideType(String text, Type type) =>
    find.ancestor(of: find.text(text), matching: find.byType(type));