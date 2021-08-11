// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'issue_88023.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoyaltyProfileTearOff {
  const _$LoyaltyProfileTearOff();

  _LoyaltyProfile call(
      {String? qrCode,
      bool? hasPromotion = false,
      List<int>? promotionsResources = const []}) {
    return _LoyaltyProfile(
      qrCode: qrCode,
      hasPromotion: hasPromotion,
      promotionsResources: promotionsResources,
    );
  }
}

/// @nodoc
const $LoyaltyProfile = _$LoyaltyProfileTearOff();

/// @nodoc
mixin _$LoyaltyProfile {
  String? get qrCode => throw _privateConstructorUsedError;
  bool? get hasPromotion => throw _privateConstructorUsedError;
  List<int>? get promotionsResources => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoyaltyProfileCopyWith<LoyaltyProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyProfileCopyWith<$Res> {
  factory $LoyaltyProfileCopyWith(
          LoyaltyProfile value, $Res Function(LoyaltyProfile) then) =
      _$LoyaltyProfileCopyWithImpl<$Res>;
  $Res call(
      {String? qrCode, bool? hasPromotion, List<int>? promotionsResources});
}

/// @nodoc
class _$LoyaltyProfileCopyWithImpl<$Res>
    implements $LoyaltyProfileCopyWith<$Res> {
  _$LoyaltyProfileCopyWithImpl(this._value, this._then);

  final LoyaltyProfile _value;
  // ignore: unused_field
  final $Res Function(LoyaltyProfile) _then;

  @override
  $Res call({
    Object? qrCode = freezed,
    Object? hasPromotion = freezed,
    Object? promotionsResources = freezed,
  }) {
    return _then(_value.copyWith(
      qrCode: qrCode == freezed
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPromotion: hasPromotion == freezed
          ? _value.hasPromotion
          : hasPromotion // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotionsResources: promotionsResources == freezed
          ? _value.promotionsResources
          : promotionsResources // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$LoyaltyProfileCopyWith<$Res>
    implements $LoyaltyProfileCopyWith<$Res> {
  factory _$LoyaltyProfileCopyWith(
          _LoyaltyProfile value, $Res Function(_LoyaltyProfile) then) =
      __$LoyaltyProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? qrCode, bool? hasPromotion, List<int>? promotionsResources});
}

/// @nodoc
class __$LoyaltyProfileCopyWithImpl<$Res>
    extends _$LoyaltyProfileCopyWithImpl<$Res>
    implements _$LoyaltyProfileCopyWith<$Res> {
  __$LoyaltyProfileCopyWithImpl(
      _LoyaltyProfile _value, $Res Function(_LoyaltyProfile) _then)
      : super(_value, (v) => _then(v as _LoyaltyProfile));

  @override
  _LoyaltyProfile get _value => super._value as _LoyaltyProfile;

  @override
  $Res call({
    Object? qrCode = freezed,
    Object? hasPromotion = freezed,
    Object? promotionsResources = freezed,
  }) {
    return _then(_LoyaltyProfile(
      qrCode: qrCode == freezed
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPromotion: hasPromotion == freezed
          ? _value.hasPromotion
          : hasPromotion // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotionsResources: promotionsResources == freezed
          ? _value.promotionsResources
          : promotionsResources // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$_LoyaltyProfile implements _LoyaltyProfile {
  const _$_LoyaltyProfile(
      {this.qrCode,
      this.hasPromotion = false,
      this.promotionsResources = const []});

  @override
  final String? qrCode;
  @JsonKey(defaultValue: false)
  @override
  final bool? hasPromotion;
  @JsonKey(defaultValue: const [])
  @override
  final List<int>? promotionsResources;

  @override
  String toString() {
    return 'LoyaltyProfile(qrCode: $qrCode, hasPromotion: $hasPromotion, promotionsResources: $promotionsResources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoyaltyProfile &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.hasPromotion, hasPromotion) ||
                const DeepCollectionEquality()
                    .equals(other.hasPromotion, hasPromotion)) &&
            (identical(other.promotionsResources, promotionsResources) ||
                const DeepCollectionEquality()
                    .equals(other.promotionsResources, promotionsResources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(qrCode) ^
      const DeepCollectionEquality().hash(hasPromotion) ^
      const DeepCollectionEquality().hash(promotionsResources);

  @JsonKey(ignore: true)
  @override
  _$LoyaltyProfileCopyWith<_LoyaltyProfile> get copyWith =>
      __$LoyaltyProfileCopyWithImpl<_LoyaltyProfile>(this, _$identity);
}

abstract class _LoyaltyProfile implements LoyaltyProfile {
  const factory _LoyaltyProfile(
      {String? qrCode,
      bool? hasPromotion,
      List<int>? promotionsResources}) = _$_LoyaltyProfile;

  @override
  String? get qrCode => throw _privateConstructorUsedError;
  @override
  bool? get hasPromotion => throw _privateConstructorUsedError;
  @override
  List<int>? get promotionsResources => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoyaltyProfileCopyWith<_LoyaltyProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
