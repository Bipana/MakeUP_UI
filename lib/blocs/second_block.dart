import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';

import 'package:makeup_ui/actions/makeup_actions.dart';
import 'package:makeup_ui/models/screen.dart';

class SecondBloc {
  final makeUpActions = MakeUpActions();

  final ValueNotifier<BuiltList<Product>> makeup = ValueNotifier(BuiltList());

  Future getMakeup() async {
    var result = await makeUpActions.getMakeUp();
    makeup.value = result;
  }
}
