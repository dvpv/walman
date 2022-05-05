part of 'index.dart';

@freezed
class Address with _$Address {
  const factory Address() = Address$;

  factory Address.fromJson(Map<dynamic, dynamic> json) => _$AddressFromJson(Map<String, dynamic>.from(json));
}
