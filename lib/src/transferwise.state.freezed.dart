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
  QTransferwiseStatement? get transferwiseStatement =>
      throw _privateConstructorUsedError;
  QTransferwisePayment? get transferwisePayment =>
      throw _privateConstructorUsedError;
  RouterState? get routerState => throw _privateConstructorUsedError;
  WalletRequest? get walletRequest => throw _privateConstructorUsedError;
  QWallet? get wallet => throw _privateConstructorUsedError;
  List<ProductEnum> get productEnums => throw _privateConstructorUsedError;
  QAddress? get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QTransferwiseStatement? transferwiseStatement,
            QTransferwisePayment? transferwisePayment,
            RouterState? routerState,
            WalletRequest? walletRequest,
            QWallet? wallet,
            List<ProductEnum> productEnums,
            QAddress? address)
        some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QTransferwiseStatement? transferwiseStatement,
            QTransferwisePayment? transferwisePayment,
            RouterState? routerState,
            WalletRequest? walletRequest,
            QWallet? wallet,
            List<ProductEnum> productEnums,
            QAddress? address)?
        some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QTransferwiseStatement? transferwiseStatement,
            QTransferwisePayment? transferwisePayment,
            RouterState? routerState,
            WalletRequest? walletRequest,
            QWallet? wallet,
            List<ProductEnum> productEnums,
            QAddress? address)?
        some,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Some value) some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Some value)? some,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Some value)? some,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferwiseStateCopyWith<TransferwiseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferwiseStateCopyWith<$Res> {
  factory $TransferwiseStateCopyWith(
          TransferwiseState value, $Res Function(TransferwiseState) then) =
      _$TransferwiseStateCopyWithImpl<$Res, TransferwiseState>;
  @useResult
  $Res call(
      {QTransferwiseStatement? transferwiseStatement,
      QTransferwisePayment? transferwisePayment,
      RouterState? routerState,
      WalletRequest? walletRequest,
      QWallet? wallet,
      List<ProductEnum> productEnums,
      QAddress? address});

  $RouterStateCopyWith<$Res>? get routerState;
}

/// @nodoc
class _$TransferwiseStateCopyWithImpl<$Res, $Val extends TransferwiseState>
    implements $TransferwiseStateCopyWith<$Res> {
  _$TransferwiseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transferwiseStatement = freezed,
    Object? transferwisePayment = freezed,
    Object? routerState = freezed,
    Object? walletRequest = freezed,
    Object? wallet = freezed,
    Object? productEnums = null,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      transferwiseStatement: freezed == transferwiseStatement
          ? _value.transferwiseStatement
          : transferwiseStatement // ignore: cast_nullable_to_non_nullable
              as QTransferwiseStatement?,
      transferwisePayment: freezed == transferwisePayment
          ? _value.transferwisePayment
          : transferwisePayment // ignore: cast_nullable_to_non_nullable
              as QTransferwisePayment?,
      routerState: freezed == routerState
          ? _value.routerState
          : routerState // ignore: cast_nullable_to_non_nullable
              as RouterState?,
      walletRequest: freezed == walletRequest
          ? _value.walletRequest
          : walletRequest // ignore: cast_nullable_to_non_nullable
              as WalletRequest?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as QWallet?,
      productEnums: null == productEnums
          ? _value.productEnums
          : productEnums // ignore: cast_nullable_to_non_nullable
              as List<ProductEnum>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as QAddress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RouterStateCopyWith<$Res>? get routerState {
    if (_value.routerState == null) {
      return null;
    }

    return $RouterStateCopyWith<$Res>(_value.routerState!, (value) {
      return _then(_value.copyWith(routerState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SomeCopyWith<$Res>
    implements $TransferwiseStateCopyWith<$Res> {
  factory _$$_SomeCopyWith(_$_Some value, $Res Function(_$_Some) then) =
      __$$_SomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QTransferwiseStatement? transferwiseStatement,
      QTransferwisePayment? transferwisePayment,
      RouterState? routerState,
      WalletRequest? walletRequest,
      QWallet? wallet,
      List<ProductEnum> productEnums,
      QAddress? address});

  @override
  $RouterStateCopyWith<$Res>? get routerState;
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
    Object? transferwiseStatement = freezed,
    Object? transferwisePayment = freezed,
    Object? routerState = freezed,
    Object? walletRequest = freezed,
    Object? wallet = freezed,
    Object? productEnums = null,
    Object? address = freezed,
  }) {
    return _then(_$_Some(
      transferwiseStatement: freezed == transferwiseStatement
          ? _value.transferwiseStatement
          : transferwiseStatement // ignore: cast_nullable_to_non_nullable
              as QTransferwiseStatement?,
      transferwisePayment: freezed == transferwisePayment
          ? _value.transferwisePayment
          : transferwisePayment // ignore: cast_nullable_to_non_nullable
              as QTransferwisePayment?,
      routerState: freezed == routerState
          ? _value.routerState
          : routerState // ignore: cast_nullable_to_non_nullable
              as RouterState?,
      walletRequest: freezed == walletRequest
          ? _value.walletRequest
          : walletRequest // ignore: cast_nullable_to_non_nullable
              as WalletRequest?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as QWallet?,
      productEnums: null == productEnums
          ? _value._productEnums
          : productEnums // ignore: cast_nullable_to_non_nullable
              as List<ProductEnum>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as QAddress?,
    ));
  }
}

/// @nodoc

class _$_Some implements _Some {
  const _$_Some(
      {this.transferwiseStatement,
      this.transferwisePayment,
      this.routerState,
      this.walletRequest,
      this.wallet,
      required final List<ProductEnum> productEnums,
      this.address})
      : _productEnums = productEnums;

  @override
  final QTransferwiseStatement? transferwiseStatement;
  @override
  final QTransferwisePayment? transferwisePayment;
  @override
  final RouterState? routerState;
  @override
  final WalletRequest? walletRequest;
  @override
  final QWallet? wallet;
  final List<ProductEnum> _productEnums;
  @override
  List<ProductEnum> get productEnums {
    if (_productEnums is EqualUnmodifiableListView) return _productEnums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productEnums);
  }

  @override
  final QAddress? address;

  @override
  String toString() {
    return 'TransferwiseState.some(transferwiseStatement: $transferwiseStatement, transferwisePayment: $transferwisePayment, routerState: $routerState, walletRequest: $walletRequest, wallet: $wallet, productEnums: $productEnums, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Some &&
            (identical(other.transferwiseStatement, transferwiseStatement) ||
                other.transferwiseStatement == transferwiseStatement) &&
            (identical(other.transferwisePayment, transferwisePayment) ||
                other.transferwisePayment == transferwisePayment) &&
            (identical(other.routerState, routerState) ||
                other.routerState == routerState) &&
            (identical(other.walletRequest, walletRequest) ||
                other.walletRequest == walletRequest) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            const DeepCollectionEquality()
                .equals(other._productEnums, _productEnums) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transferwiseStatement,
      transferwisePayment,
      routerState,
      walletRequest,
      wallet,
      const DeepCollectionEquality().hash(_productEnums),
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SomeCopyWith<_$_Some> get copyWith =>
      __$$_SomeCopyWithImpl<_$_Some>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QTransferwiseStatement? transferwiseStatement,
            QTransferwisePayment? transferwisePayment,
            RouterState? routerState,
            WalletRequest? walletRequest,
            QWallet? wallet,
            List<ProductEnum> productEnums,
            QAddress? address)
        some,
  }) {
    return some(transferwiseStatement, transferwisePayment, routerState,
        walletRequest, wallet, productEnums, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QTransferwiseStatement? transferwiseStatement,
            QTransferwisePayment? transferwisePayment,
            RouterState? routerState,
            WalletRequest? walletRequest,
            QWallet? wallet,
            List<ProductEnum> productEnums,
            QAddress? address)?
        some,
  }) {
    return some?.call(transferwiseStatement, transferwisePayment, routerState,
        walletRequest, wallet, productEnums, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QTransferwiseStatement? transferwiseStatement,
            QTransferwisePayment? transferwisePayment,
            RouterState? routerState,
            WalletRequest? walletRequest,
            QWallet? wallet,
            List<ProductEnum> productEnums,
            QAddress? address)?
        some,
    required TResult orElse(),
  }) {
    if (some != null) {
      return some(transferwiseStatement, transferwisePayment, routerState,
          walletRequest, wallet, productEnums, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Some value) some,
  }) {
    return some(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Some value)? some,
  }) {
    return some?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _Some(
      {final QTransferwiseStatement? transferwiseStatement,
      final QTransferwisePayment? transferwisePayment,
      final RouterState? routerState,
      final WalletRequest? walletRequest,
      final QWallet? wallet,
      required final List<ProductEnum> productEnums,
      final QAddress? address}) = _$_Some;

  @override
  QTransferwiseStatement? get transferwiseStatement;
  @override
  QTransferwisePayment? get transferwisePayment;
  @override
  RouterState? get routerState;
  @override
  WalletRequest? get walletRequest;
  @override
  QWallet? get wallet;
  @override
  List<ProductEnum> get productEnums;
  @override
  QAddress? get address;
  @override
  @JsonKey(ignore: true)
  _$$_SomeCopyWith<_$_Some> get copyWith => throw _privateConstructorUsedError;
}
