// GENERATED CODE - DO NOT MODIFY BY HAND

part of screen;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MakeUp> _$makeUpSerializer = new _$MakeUpSerializer();
Serializer<Product> _$productSerializer = new _$ProductSerializer();

class _$MakeUpSerializer implements StructuredSerializer<MakeUp> {
  @override
  final Iterable<Type> types = const [MakeUp, _$MakeUp];
  @override
  final String wireName = 'MakeUp';

  @override
  Iterable<Object?> serialize(Serializers serializers, MakeUp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'makeUp',
      serializers.serialize(object.makeUp,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Product)])),
    ];

    return result;
  }

  @override
  MakeUp deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MakeUpBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'makeUp':
          result.makeUp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Product)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable<Object?> serialize(Serializers serializers, Product object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
      'image_link',
      serializers.serialize(object.image_link,
          specifiedType: const FullType(String)),
      'product_type',
      serializers.serialize(object.product_type,
          specifiedType: const FullType(String)),
      'product_link',
      serializers.serialize(object.product_link,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(DateTime)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_link':
          result.image_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'product_type':
          result.product_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_link':
          result.product_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$MakeUp extends MakeUp {
  @override
  final BuiltList<Product> makeUp;

  factory _$MakeUp([void Function(MakeUpBuilder)? updates]) =>
      (new MakeUpBuilder()..update(updates)).build();

  _$MakeUp._({required this.makeUp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(makeUp, 'MakeUp', 'makeUp');
  }

  @override
  MakeUp rebuild(void Function(MakeUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MakeUpBuilder toBuilder() => new MakeUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MakeUp && makeUp == other.makeUp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, makeUp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MakeUp')..add('makeUp', makeUp))
        .toString();
  }
}

class MakeUpBuilder implements Builder<MakeUp, MakeUpBuilder> {
  _$MakeUp? _$v;

  ListBuilder<Product>? _makeUp;
  ListBuilder<Product> get makeUp =>
      _$this._makeUp ??= new ListBuilder<Product>();
  set makeUp(ListBuilder<Product>? makeUp) => _$this._makeUp = makeUp;

  MakeUpBuilder();

  MakeUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _makeUp = $v.makeUp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MakeUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MakeUp;
  }

  @override
  void update(void Function(MakeUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MakeUp build() {
    _$MakeUp _$result;
    try {
      _$result = _$v ?? new _$MakeUp._(makeUp: makeUp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'makeUp';
        makeUp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MakeUp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Product extends Product {
  @override
  final int id;
  @override
  final String brand;
  @override
  final String name;
  @override
  final String description;
  @override
  final String price;
  @override
  final String image_link;
  @override
  final double? rating;
  @override
  final String product_type;
  @override
  final String product_link;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;

  factory _$Product([void Function(ProductBuilder)? updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._(
      {required this.id,
      required this.brand,
      required this.name,
      required this.description,
      required this.price,
      required this.image_link,
      this.rating,
      required this.product_type,
      required this.product_link,
      required this.created_at,
      required this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Product', 'id');
    BuiltValueNullFieldError.checkNotNull(brand, 'Product', 'brand');
    BuiltValueNullFieldError.checkNotNull(name, 'Product', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Product', 'description');
    BuiltValueNullFieldError.checkNotNull(price, 'Product', 'price');
    BuiltValueNullFieldError.checkNotNull(image_link, 'Product', 'image_link');
    BuiltValueNullFieldError.checkNotNull(
        product_type, 'Product', 'product_type');
    BuiltValueNullFieldError.checkNotNull(
        product_link, 'Product', 'product_link');
    BuiltValueNullFieldError.checkNotNull(created_at, 'Product', 'created_at');
    BuiltValueNullFieldError.checkNotNull(updated_at, 'Product', 'updated_at');
  }

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        id == other.id &&
        brand == other.brand &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        image_link == other.image_link &&
        rating == other.rating &&
        product_type == other.product_type &&
        product_link == other.product_link &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            brand.hashCode),
                                        name.hashCode),
                                    description.hashCode),
                                price.hashCode),
                            image_link.hashCode),
                        rating.hashCode),
                    product_type.hashCode),
                product_link.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('id', id)
          ..add('brand', brand)
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('image_link', image_link)
          ..add('rating', rating)
          ..add('product_type', product_type)
          ..add('product_link', product_link)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _image_link;
  String? get image_link => _$this._image_link;
  set image_link(String? image_link) => _$this._image_link = image_link;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _product_type;
  String? get product_type => _$this._product_type;
  set product_type(String? product_type) => _$this._product_type = product_type;

  String? _product_link;
  String? get product_link => _$this._product_link;
  set product_link(String? product_link) => _$this._product_link = product_link;

  DateTime? _created_at;
  DateTime? get created_at => _$this._created_at;
  set created_at(DateTime? created_at) => _$this._created_at = created_at;

  DateTime? _updated_at;
  DateTime? get updated_at => _$this._updated_at;
  set updated_at(DateTime? updated_at) => _$this._updated_at = updated_at;

  ProductBuilder();

  ProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _brand = $v.brand;
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _image_link = $v.image_link;
      _rating = $v.rating;
      _product_type = $v.product_type;
      _product_link = $v.product_link;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    final _$result = _$v ??
        new _$Product._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Product', 'id'),
            brand: BuiltValueNullFieldError.checkNotNull(
                brand, 'Product', 'brand'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Product', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'Product', 'description'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'Product', 'price'),
            image_link: BuiltValueNullFieldError.checkNotNull(
                image_link, 'Product', 'image_link'),
            rating: rating,
            product_type: BuiltValueNullFieldError.checkNotNull(
                product_type, 'Product', 'product_type'),
            product_link: BuiltValueNullFieldError.checkNotNull(
                product_link, 'Product', 'product_link'),
            created_at: BuiltValueNullFieldError.checkNotNull(
                created_at, 'Product', 'created_at'),
            updated_at: BuiltValueNullFieldError.checkNotNull(
                updated_at, 'Product', 'updated_at'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
