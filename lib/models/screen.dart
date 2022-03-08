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
  @BuiltValueField(wireName: 'image_link')
  String? get imageLink;
  double? get rating;
  @BuiltValueField(wireName: 'product_type')
  String? get productType;
  @BuiltValueField(wireName: 'product_link')
  String? get productLink;
  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  Product._();

  factory Product([updates(ProductBuilder b)]) = _$Product;

  static Serializer<Product> get serializer => _$productSerializer;
}
