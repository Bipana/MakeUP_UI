library screen;


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'screen.g.dart';

abstract class MakeUp implements Built<MakeUp, MakeUpBuilder> {
  // fields go here

  BuiltList<Product> get makeUp;

  MakeUp._();
  //to make class serializable
  static Serializer<MakeUp> get serializer => _$makeUpSerializer;

  factory MakeUp([updates(MakeUpBuilder b)]) = _$MakeUp;
}

abstract class Product implements Built<Product, ProductBuilder> {
  // fields go here

  int get id;
  String get brand;
  String get name;
  String get description;
  String get price;
  String get image_link;
  
  double? get rating ;
  String get product_type;
  String get product_link;
  DateTime get created_at;
  DateTime get updated_at;

  Product._();

  factory Product([updates(ProductBuilder b)]) = _$Product;

  static Serializer<Product> get serializer => _$productSerializer;
}
