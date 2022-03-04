import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:makeup_ui/actions/makeup_actions.dart';
import 'package:makeup_ui/models/screen.dart';

class HomeBloc {
  final makeUpActions = MakeUpActions();

  final _stateStreamController = StreamController<BuiltList<Product>>();

  Stream<BuiltList<Product>> get makeupStream => _stateStreamController.stream;

  Future getMakeup() async {
    var makeup = await makeUpActions.getMakeUp();

    _stateStreamController.sink.add(makeup);
  }
}
