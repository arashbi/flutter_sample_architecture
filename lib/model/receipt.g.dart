// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$Receipt extends Receipt {
  @override
  final String name;
  @override
  final String shop;

  factory _$Receipt([void updates(ReceiptBuilder b)]) =>
      (new ReceiptBuilder()..update(updates)).build();

  _$Receipt._({this.name, this.shop}) : super._() {
    if (name == null) throw new BuiltValueNullFieldError('Receipt', 'name');
    if (shop == null) throw new BuiltValueNullFieldError('Receipt', 'shop');
  }

  @override
  Receipt rebuild(void updates(ReceiptBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiptBuilder toBuilder() => new ReceiptBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Receipt) return false;
    return name == other.name && shop == other.shop;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), shop.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Receipt')
          ..add('name', name)
          ..add('shop', shop))
        .toString();
  }
}

class ReceiptBuilder implements Builder<Receipt, ReceiptBuilder> {
  _$Receipt _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _shop;
  String get shop => _$this._shop;
  set shop(String shop) => _$this._shop = shop;

  ReceiptBuilder();

  ReceiptBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _shop = _$v.shop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Receipt other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Receipt;
  }

  @override
  void update(void updates(ReceiptBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Receipt build() {
    final _$result = _$v ?? new _$Receipt._(name: name, shop: shop);
    replace(_$result);
    return _$result;
  }
}
