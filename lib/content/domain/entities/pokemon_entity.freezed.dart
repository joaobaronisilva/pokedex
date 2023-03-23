// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonEntity {
  String get name => throw _privateConstructorUsedError;
  PokemonDetailsEntity? get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
          PokemonEntity value, $Res Function(PokemonEntity) then) =
      _$PokemonEntityCopyWithImpl<$Res, PokemonEntity>;
  @useResult
  $Res call({String name, PokemonDetailsEntity? details});

  $PokemonDetailsEntityCopyWith<$Res>? get details;
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res, $Val extends PokemonEntity>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as PokemonDetailsEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonDetailsEntityCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $PokemonDetailsEntityCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonEntityCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$$_PokemonEntityCopyWith(
          _$_PokemonEntity value, $Res Function(_$_PokemonEntity) then) =
      __$$_PokemonEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, PokemonDetailsEntity? details});

  @override
  $PokemonDetailsEntityCopyWith<$Res>? get details;
}

/// @nodoc
class __$$_PokemonEntityCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res, _$_PokemonEntity>
    implements _$$_PokemonEntityCopyWith<$Res> {
  __$$_PokemonEntityCopyWithImpl(
      _$_PokemonEntity _value, $Res Function(_$_PokemonEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? details = freezed,
  }) {
    return _then(_$_PokemonEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as PokemonDetailsEntity?,
    ));
  }
}

/// @nodoc

class _$_PokemonEntity implements _PokemonEntity {
  _$_PokemonEntity({required this.name, this.details});

  @override
  final String name;
  @override
  final PokemonDetailsEntity? details;

  @override
  String toString() {
    return 'PokemonEntity(name: $name, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonEntityCopyWith<_$_PokemonEntity> get copyWith =>
      __$$_PokemonEntityCopyWithImpl<_$_PokemonEntity>(this, _$identity);
}

abstract class _PokemonEntity implements PokemonEntity {
  factory _PokemonEntity(
      {required final String name,
      final PokemonDetailsEntity? details}) = _$_PokemonEntity;

  @override
  String get name;
  @override
  PokemonDetailsEntity? get details;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonEntityCopyWith<_$_PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
