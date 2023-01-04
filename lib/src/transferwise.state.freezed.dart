// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transferwise.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransferwiseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ITransferwiseStatement transferwiseStatement)
        some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ITransferwiseStatement transferwiseStatement)? some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ITransferwiseStatement transferwiseStatement)? some,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Some value) some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Some value)? some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Some value)? some,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferwiseStateCopyWith<$Res> {
  factory $TransferwiseStateCopyWith(
          TransferwiseState value, $Res Function(TransferwiseState) then) =
      _$TransferwiseStateCopyWithImpl<$Res, TransferwiseState>;
}

/// @nodoc
class _$TransferwiseStateCopyWithImpl<$Res, $Val extends TransferwiseState>
    implements $TransferwiseStateCopyWith<$Res> {
  _$TransferwiseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoneCopyWith<$Res> {
  factory _$$_NoneCopyWith(_$_None value, $Res Function(_$_None) then) =
      __$$_NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoneCopyWithImpl<$Res>
    extends _$TransferwiseStateCopyWithImpl<$Res, _$_None>
    implements _$$_NoneCopyWith<$Res> {
  __$$_NoneCopyWithImpl(_$_None _value, $Res Function(_$_None) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'TransferwiseState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ITransferwiseStatement transferwiseStatement)
        some,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ITransferwiseStatement transferwiseStatement)? some,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ITransferwiseStatement transferwiseStatement)? some,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Some value) some,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Some value)? some,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Some value)? some,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements TransferwiseState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$$_SomeCopyWith<$Res> {
  factory _$$_SomeCopyWith(_$_Some value, $Res Function(_$_Some) then) =
      __$$_SomeCopyWithImpl<$Res>;
  @useResult
  $Res call({ITransferwiseStatement transferwiseStatement});
}

/// @nodoc
class __$$_SomeCopyWithImpl<$Res>
    extends _$TransferwiseStateCopyWithImpl<$Res, _$_Some>
    implements _$$_SomeCopyWith<$Res> {
  __$$_SomeCopyWithImpl(_$_Some _value, $Res Function(_$_Some) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transferwiseStatement = null,
  }) {
    return _then(_$_Some(
      null == transferwiseStatement
          ? _value.transferwiseStatement
          : transferwiseStatement // ignore: cast_nullable_to_non_nullable
              as ITransferwiseStatement,
    ));
  }
}

/// @nodoc

class _$_Some implements _Some {
  const _$_Some(this.transferwiseStatement);

  @override
  final ITransferwiseStatement transferwiseStatement;

  @override
  String toString() {
    return 'TransferwiseState.some(transferwiseStatement: $transferwiseStatement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Some &&
            (identical(other.transferwiseStatement, transferwiseStatement) ||
                other.transferwiseStatement == transferwiseStatement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transferwiseStatement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SomeCopyWith<_$_Some> get copyWith =>
      __$$_SomeCopyWithImpl<_$_Some>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ITransferwiseStatement transferwiseStatement)
        some,
  }) {
    return some(transferwiseStatement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ITransferwiseStatement transferwiseStatement)? some,
  }) {
    return some?.call(transferwiseStatement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ITransferwiseStatement transferwiseStatement)? some,
    required TResult orElse(),
  }) {
    if (some != null) {
      return some(transferwiseStatement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Some value) some,
  }) {
    return some(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Some value)? some,
  }) {
    return some?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Some value)? some,
    required TResult orElse(),
  }) {
    if (some != null) {
      return some(this);
    }
    return orElse();
  }
}

abstract class _Some implements TransferwiseState {
  const factory _Some(final ITransferwiseStatement transferwiseStatement) =
      _$_Some;

  ITransferwiseStatement get transferwiseStatement;
  @JsonKey(ignore: true)
  _$$_SomeCopyWith<_$_Some> get copyWith => throw _privateConstructorUsedError;
}
