// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonDetailsEntity {
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  List<String> get abilities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailsEntityCopyWith<PokemonDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsEntityCopyWith<$Res> {
  factory $PokemonDetailsEntityCopyWith(PokemonDetailsEntity value,
          $Res Function(PokemonDetailsEntity) then) =
      _$PokemonDetailsEntityCopyWithImpl<$Res, PokemonDetailsEntity>;
  @useResult
  $Res call({String imageUrl, List<String> types, List<String> abilities});
}

/// @nodoc
class _$PokemonDetailsEntityCopyWithImpl<$Res,
        $Val extends PokemonDetailsEntity>
    implements $PokemonDetailsEntityCopyWith<$Res> {
  _$PokemonDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? types = null,
    Object? abilities = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonDetailsEntityCopyWith<$Res>
    implements $PokemonDetailsEntityCopyWith<$Res> {
  factory _$$_PokemonDetailsEntityCopyWith(_$_PokemonDetailsEntity value,
          $Res Function(_$_PokemonDetailsEntity) then) =
      __$$_PokemonDetailsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, List<String> types, List<String> abilities});
}

/// @nodoc
class __$$_PokemonDetailsEntityCopyWithImpl<$Res>
    extends _$PokemonDetailsEntityCopyWithImpl<$Res, _$_PokemonDetailsEntity>
    implements _$$_PokemonDetailsEntityCopyWith<$Res> {
  __$$_PokemonDetailsEntityCopyWithImpl(_$_PokemonDetailsEntity _value,
      $Res Function(_$_PokemonDetailsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? types = null,
    Object? abilities = null,
  }) {
    return _then(_$_PokemonDetailsEntity(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PokemonDetailsEntity implements _PokemonDetailsEntity {
  _$_PokemonDetailsEntity(
      {required this.imageUrl,
      required final List<String> types,
      required final List<String> abilities})
      : _types = types,
        _abilities = abilities;

  @override
  final String imageUrl;
  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<String> _abilities;
  @override
  List<String> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  String toString() {
    return 'PokemonDetailsEntity(imageUrl: $imageUrl, types: $types, abilities: $abilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDetailsEntity &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_abilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDetailsEntityCopyWith<_$_PokemonDetailsEntity> get copyWith =>
      __$$_PokemonDetailsEntityCopyWithImpl<_$_PokemonDetailsEntity>(
          this, _$identity);
}

abstract class _PokemonDetailsEntity implements PokemonDetailsEntity {
  factory _PokemonDetailsEntity(
      {required final String imageUrl,
      required final List<String> types,
      required final List<String> abilities}) = _$_PokemonDetailsEntity;

  @override
  String get imageUrl;
  @override
  List<String> get types;
  @override
  List<String> get abilities;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDetailsEntityCopyWith<_$_PokemonDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
