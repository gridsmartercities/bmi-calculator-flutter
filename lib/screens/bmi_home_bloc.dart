import 'dart:async';

import 'package:bmi_calculator_flutter/api/bmi_api.dart';
import 'package:flutter/material.dart';
import 'package:stream_transform/stream_transform.dart';

class BmiHomeBloc {
  final BmiApi _api;

  final weightTextController = TextEditingController();
  final heightTextController = TextEditingController();

  final _heightStreamController = StreamController<int>();

  Stream<bool> buttonEnabled;

  StreamSink<int> get _heightSink => _heightStreamController.sink;

  Stream<int> get heightStream => _heightStreamController.stream;

  final _weightStreamController = StreamController<int>();

  StreamSink<int> get _weightSink => _weightStreamController.sink;

  Stream<int> get weightStream => _weightStreamController.stream;

  HeightWeight _heightWeight;

  BmiHomeBloc(this._api) {
    buttonEnabled = _heightStreamController.stream.combineLatest(
        _weightStreamController.stream, (height, weight) {
          _heightWeight = HeightWeight(height, weight);
          return height > 0 && weight > 0;
        });
  }

  void heightChanged(String height) {
    _heightSink.add(int.parse(height));
  }

  void weightChanged(String weight) {
    _weightSink.add(int.parse(weight));
  }

  dispose() {
    _heightStreamController.close();
    _weightStreamController.close();
  }

  submitDetails() {

  }
}

class HeightWeight {
  final int weight;
  final int height;

  HeightWeight(this.height, this.weight);
}
