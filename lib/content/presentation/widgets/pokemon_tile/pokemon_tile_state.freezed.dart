// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_tile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonTileState {
  String? get errorMessage => throw _privateConstructorUsedError;
  PokemonEntity? get pokemon => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonTileStateCopyWith<PokemonTileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTileStateCopyWith<$Res> {
  factory $PokemonTileStateCopyWith(
          PokemonTileState value, $Res Function(PokemonTileState) then) =
      _$PokemonTileStateCopyWithImpl<$Res, PokemonTileState>;
  @useResult
  $Res call({String? errorMessage, PokemonEntity? pokemon, dynamic isLoading});

  $PokemonEntityCopyWith<$Res>? get pokemon;
}

/// @nodoc
class _$PokemonTileStateCopyWithImpl<$Res, $Val extends PokemonTileState>
    implements $PokemonTileStateCopyWith<$Res> {
  _$PokemonTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? pokemon = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonEntity?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonEntityCopyWith<$Res>? get pokemon {
    if (_value.pokemon == null) {
      return null;
    }

    return $PokemonEntityCopyWith<$Res>(_value.pokemon!, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTileStateCopyWith<$Res>
    implements $PokemonTileStateCopyWith<$Res> {
  factory _$$_PokemonTileStateCopyWith(
          _$_PokemonTileState value, $Res Function(_$_PokemonTileState) then) =
      __$$_PokemonTileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage, PokemonEntity? pokemon, dynamic isLoading});

  @override
  $PokemonEntityCopyWith<$Res>? get pokemon;
}

/// @nodoc
class __$$_PokemonTileStateCopyWithImpl<$Res>
    extends _$PokemonTileStateCopyWithImpl<$Res, _$_PokemonTileState>
    implements _$$_PokemonTileStateCopyWith<$Res> {
  __$$_PokemonTileStateCopyWithImpl(
      _$_PokemonTileState _value, $Res Function(_$_PokemonTileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? pokemon = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_PokemonTileState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonEntity?,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
    ));
  }
}

/// @nodoc

class _$_PokemonTileState implements _PokemonTileState {
  const _$_PokemonTileState(
      {this.errorMessage, this.pokemon, this.isLoading = false});

  @override
  final String? errorMessage;
  @override
  final PokemonEntity? pokemon;
  @override
  @JsonKey()
  final dynamic isLoading;

  @override
  String toString() {
    return 'PokemonTileState(errorMessage: $errorMessage, pokemon: $pokemon, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonTileState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, pokemon,
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonTileStateCopyWith<_$_PokemonTileState> get copyWith =>
      __$$_PokemonTileStateCopyWithImpl<_$_PokemonTileState>(this, _$identity);
}

abstract class _PokemonTileState implements PokemonTileState {
  const factory _PokemonTileState(
      {final String? errorMessage,
      final PokemonEntity? pokemon,
      final dynamic isLoading}) = _$_PokemonTileState;

  @override
  String? get errorMessage;
  @override
  PokemonEntity? get pokemon;
  @override
  dynamic get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTileStateCopyWith<_$_PokemonTileState> get copyWith =>
      throw _privateConstructorUsedError;
}
