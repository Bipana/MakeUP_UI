import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:makeup_ui/models/api.dart';
import 'package:makeup_ui/models/serializers.dart';

import '../models/screen.dart';
import 'package:http/http.dart' as http;

class MakeUpActions {
  Future<BuiltList<Product>> getMakeUp() async {
    final response = await http.get(Uri.parse(baseUrl)); ////for response

    //for deserializing
    var makeUp = serializers.deserialize(
      json.decode(response.body),
      specifiedType: const FullType(BuiltList, [FullType(Product)]),
    );

    return makeUp as BuiltList<Product>;
  }
}
