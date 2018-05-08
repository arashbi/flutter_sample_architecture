import 'package:built_value/built_value.dart';

part 'receipt.g.dart';

abstract class Receipt implements Built<Receipt, ReceiptBuilder>{
  String get name;
  String get shop;
  Receipt._();
  factory Receipt([updates(ReceiptBuilder b)]) = _$Receipt;
}