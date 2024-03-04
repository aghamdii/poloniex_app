// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_web_socket_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoWebSocketTokenResponse {
  String get code => throw _privateConstructorUsedError;
  CryptoWebSocketTokenData get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoWebSocketTokenResponseCopyWith<CryptoWebSocketTokenResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWebSocketTokenResponseCopyWith<$Res> {
  factory $CryptoWebSocketTokenResponseCopyWith(
          CryptoWebSocketTokenResponse value,
          $Res Function(CryptoWebSocketTokenResponse) then) =
      _$CryptoWebSocketTokenResponseCopyWithImpl<$Res,
          CryptoWebSocketTokenResponse>;
  @useResult
  $Res call({String code, CryptoWebSocketTokenData data});

  $CryptoWebSocketTokenDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CryptoWebSocketTokenResponseCopyWithImpl<$Res,
        $Val extends CryptoWebSocketTokenResponse>
    implements $CryptoWebSocketTokenResponseCopyWith<$Res> {
  _$CryptoWebSocketTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CryptoWebSocketTokenData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoWebSocketTokenDataCopyWith<$Res> get data {
    return $CryptoWebSocketTokenDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CryptoWebSocketTokenResponseImplCopyWith<$Res>
    implements $CryptoWebSocketTokenResponseCopyWith<$Res> {
  factory _$$CryptoWebSocketTokenResponseImplCopyWith(
          _$CryptoWebSocketTokenResponseImpl value,
          $Res Function(_$CryptoWebSocketTokenResponseImpl) then) =
      __$$CryptoWebSocketTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, CryptoWebSocketTokenData data});

  @override
  $CryptoWebSocketTokenDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CryptoWebSocketTokenResponseImplCopyWithImpl<$Res>
    extends _$CryptoWebSocketTokenResponseCopyWithImpl<$Res,
        _$CryptoWebSocketTokenResponseImpl>
    implements _$$CryptoWebSocketTokenResponseImplCopyWith<$Res> {
  __$$CryptoWebSocketTokenResponseImplCopyWithImpl(
      _$CryptoWebSocketTokenResponseImpl _value,
      $Res Function(_$CryptoWebSocketTokenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$CryptoWebSocketTokenResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CryptoWebSocketTokenData,
    ));
  }
}

/// @nodoc

class _$CryptoWebSocketTokenResponseImpl
    implements _CryptoWebSocketTokenResponse {
  const _$CryptoWebSocketTokenResponseImpl(
      {required this.code, required this.data});

  @override
  final String code;
  @override
  final CryptoWebSocketTokenData data;

  @override
  String toString() {
    return 'CryptoWebSocketTokenResponse(code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoWebSocketTokenResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoWebSocketTokenResponseImplCopyWith<
          _$CryptoWebSocketTokenResponseImpl>
      get copyWith => __$$CryptoWebSocketTokenResponseImplCopyWithImpl<
          _$CryptoWebSocketTokenResponseImpl>(this, _$identity);
}

abstract class _CryptoWebSocketTokenResponse
    implements CryptoWebSocketTokenResponse {
  const factory _CryptoWebSocketTokenResponse(
          {required final String code,
          required final CryptoWebSocketTokenData data}) =
      _$CryptoWebSocketTokenResponseImpl;

  @override
  String get code;
  @override
  CryptoWebSocketTokenData get data;
  @override
  @JsonKey(ignore: true)
  _$$CryptoWebSocketTokenResponseImplCopyWith<
          _$CryptoWebSocketTokenResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CryptoWebSocketTokenData {
  List<CryptoWebSocketTokenDataInstanceServer> get instanceServers =>
      throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoWebSocketTokenDataCopyWith<CryptoWebSocketTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWebSocketTokenDataCopyWith<$Res> {
  factory $CryptoWebSocketTokenDataCopyWith(CryptoWebSocketTokenData value,
          $Res Function(CryptoWebSocketTokenData) then) =
      _$CryptoWebSocketTokenDataCopyWithImpl<$Res, CryptoWebSocketTokenData>;
  @useResult
  $Res call(
      {List<CryptoWebSocketTokenDataInstanceServer> instanceServers,
      String token});
}

/// @nodoc
class _$CryptoWebSocketTokenDataCopyWithImpl<$Res,
        $Val extends CryptoWebSocketTokenData>
    implements $CryptoWebSocketTokenDataCopyWith<$Res> {
  _$CryptoWebSocketTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instanceServers = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      instanceServers: null == instanceServers
          ? _value.instanceServers
          : instanceServers // ignore: cast_nullable_to_non_nullable
              as List<CryptoWebSocketTokenDataInstanceServer>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoWebSocketTokenDataImplCopyWith<$Res>
    implements $CryptoWebSocketTokenDataCopyWith<$Res> {
  factory _$$CryptoWebSocketTokenDataImplCopyWith(
          _$CryptoWebSocketTokenDataImpl value,
          $Res Function(_$CryptoWebSocketTokenDataImpl) then) =
      __$$CryptoWebSocketTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CryptoWebSocketTokenDataInstanceServer> instanceServers,
      String token});
}

/// @nodoc
class __$$CryptoWebSocketTokenDataImplCopyWithImpl<$Res>
    extends _$CryptoWebSocketTokenDataCopyWithImpl<$Res,
        _$CryptoWebSocketTokenDataImpl>
    implements _$$CryptoWebSocketTokenDataImplCopyWith<$Res> {
  __$$CryptoWebSocketTokenDataImplCopyWithImpl(
      _$CryptoWebSocketTokenDataImpl _value,
      $Res Function(_$CryptoWebSocketTokenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instanceServers = null,
    Object? token = null,
  }) {
    return _then(_$CryptoWebSocketTokenDataImpl(
      instanceServers: null == instanceServers
          ? _value._instanceServers
          : instanceServers // ignore: cast_nullable_to_non_nullable
              as List<CryptoWebSocketTokenDataInstanceServer>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CryptoWebSocketTokenDataImpl implements _CryptoWebSocketTokenData {
  const _$CryptoWebSocketTokenDataImpl(
      {required final List<CryptoWebSocketTokenDataInstanceServer>
          instanceServers,
      required this.token})
      : _instanceServers = instanceServers;

  final List<CryptoWebSocketTokenDataInstanceServer> _instanceServers;
  @override
  List<CryptoWebSocketTokenDataInstanceServer> get instanceServers {
    if (_instanceServers is EqualUnmodifiableListView) return _instanceServers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instanceServers);
  }

  @override
  final String token;

  @override
  String toString() {
    return 'CryptoWebSocketTokenData(instanceServers: $instanceServers, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoWebSocketTokenDataImpl &&
            const DeepCollectionEquality()
                .equals(other._instanceServers, _instanceServers) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_instanceServers), token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoWebSocketTokenDataImplCopyWith<_$CryptoWebSocketTokenDataImpl>
      get copyWith => __$$CryptoWebSocketTokenDataImplCopyWithImpl<
          _$CryptoWebSocketTokenDataImpl>(this, _$identity);
}

abstract class _CryptoWebSocketTokenData implements CryptoWebSocketTokenData {
  const factory _CryptoWebSocketTokenData(
      {required final List<CryptoWebSocketTokenDataInstanceServer>
          instanceServers,
      required final String token}) = _$CryptoWebSocketTokenDataImpl;

  @override
  List<CryptoWebSocketTokenDataInstanceServer> get instanceServers;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$CryptoWebSocketTokenDataImplCopyWith<_$CryptoWebSocketTokenDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CryptoWebSocketTokenDataInstanceServer {
  int get pingInterval => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;
  String get protocol => throw _privateConstructorUsedError;
  bool get encrypt => throw _privateConstructorUsedError;
  int get pingTimeout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoWebSocketTokenDataInstanceServerCopyWith<
          CryptoWebSocketTokenDataInstanceServer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWebSocketTokenDataInstanceServerCopyWith<$Res> {
  factory $CryptoWebSocketTokenDataInstanceServerCopyWith(
          CryptoWebSocketTokenDataInstanceServer value,
          $Res Function(CryptoWebSocketTokenDataInstanceServer) then) =
      _$CryptoWebSocketTokenDataInstanceServerCopyWithImpl<$Res,
          CryptoWebSocketTokenDataInstanceServer>;
  @useResult
  $Res call(
      {int pingInterval,
      String endpoint,
      String protocol,
      bool encrypt,
      int pingTimeout});
}

/// @nodoc
class _$CryptoWebSocketTokenDataInstanceServerCopyWithImpl<$Res,
        $Val extends CryptoWebSocketTokenDataInstanceServer>
    implements $CryptoWebSocketTokenDataInstanceServerCopyWith<$Res> {
  _$CryptoWebSocketTokenDataInstanceServerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pingInterval = null,
    Object? endpoint = null,
    Object? protocol = null,
    Object? encrypt = null,
    Object? pingTimeout = null,
  }) {
    return _then(_value.copyWith(
      pingInterval: null == pingInterval
          ? _value.pingInterval
          : pingInterval // ignore: cast_nullable_to_non_nullable
              as int,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      encrypt: null == encrypt
          ? _value.encrypt
          : encrypt // ignore: cast_nullable_to_non_nullable
              as bool,
      pingTimeout: null == pingTimeout
          ? _value.pingTimeout
          : pingTimeout // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoWebSocketTokenDataInstanceServerImplCopyWith<$Res>
    implements $CryptoWebSocketTokenDataInstanceServerCopyWith<$Res> {
  factory _$$CryptoWebSocketTokenDataInstanceServerImplCopyWith(
          _$CryptoWebSocketTokenDataInstanceServerImpl value,
          $Res Function(_$CryptoWebSocketTokenDataInstanceServerImpl) then) =
      __$$CryptoWebSocketTokenDataInstanceServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pingInterval,
      String endpoint,
      String protocol,
      bool encrypt,
      int pingTimeout});
}

/// @nodoc
class __$$CryptoWebSocketTokenDataInstanceServerImplCopyWithImpl<$Res>
    extends _$CryptoWebSocketTokenDataInstanceServerCopyWithImpl<$Res,
        _$CryptoWebSocketTokenDataInstanceServerImpl>
    implements _$$CryptoWebSocketTokenDataInstanceServerImplCopyWith<$Res> {
  __$$CryptoWebSocketTokenDataInstanceServerImplCopyWithImpl(
      _$CryptoWebSocketTokenDataInstanceServerImpl _value,
      $Res Function(_$CryptoWebSocketTokenDataInstanceServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pingInterval = null,
    Object? endpoint = null,
    Object? protocol = null,
    Object? encrypt = null,
    Object? pingTimeout = null,
  }) {
    return _then(_$CryptoWebSocketTokenDataInstanceServerImpl(
      pingInterval: null == pingInterval
          ? _value.pingInterval
          : pingInterval // ignore: cast_nullable_to_non_nullable
              as int,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      encrypt: null == encrypt
          ? _value.encrypt
          : encrypt // ignore: cast_nullable_to_non_nullable
              as bool,
      pingTimeout: null == pingTimeout
          ? _value.pingTimeout
          : pingTimeout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CryptoWebSocketTokenDataInstanceServerImpl
    implements _CryptoWebSocketTokenDataInstanceServer {
  const _$CryptoWebSocketTokenDataInstanceServerImpl(
      {required this.pingInterval,
      required this.endpoint,
      required this.protocol,
      required this.encrypt,
      required this.pingTimeout});

  @override
  final int pingInterval;
  @override
  final String endpoint;
  @override
  final String protocol;
  @override
  final bool encrypt;
  @override
  final int pingTimeout;

  @override
  String toString() {
    return 'CryptoWebSocketTokenDataInstanceServer(pingInterval: $pingInterval, endpoint: $endpoint, protocol: $protocol, encrypt: $encrypt, pingTimeout: $pingTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoWebSocketTokenDataInstanceServerImpl &&
            (identical(other.pingInterval, pingInterval) ||
                other.pingInterval == pingInterval) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.encrypt, encrypt) || other.encrypt == encrypt) &&
            (identical(other.pingTimeout, pingTimeout) ||
                other.pingTimeout == pingTimeout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pingInterval, endpoint, protocol, encrypt, pingTimeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoWebSocketTokenDataInstanceServerImplCopyWith<
          _$CryptoWebSocketTokenDataInstanceServerImpl>
      get copyWith =>
          __$$CryptoWebSocketTokenDataInstanceServerImplCopyWithImpl<
              _$CryptoWebSocketTokenDataInstanceServerImpl>(this, _$identity);
}

abstract class _CryptoWebSocketTokenDataInstanceServer
    implements CryptoWebSocketTokenDataInstanceServer {
  const factory _CryptoWebSocketTokenDataInstanceServer(
          {required final int pingInterval,
          required final String endpoint,
          required final String protocol,
          required final bool encrypt,
          required final int pingTimeout}) =
      _$CryptoWebSocketTokenDataInstanceServerImpl;

  @override
  int get pingInterval;
  @override
  String get endpoint;
  @override
  String get protocol;
  @override
  bool get encrypt;
  @override
  int get pingTimeout;
  @override
  @JsonKey(ignore: true)
  _$$CryptoWebSocketTokenDataInstanceServerImplCopyWith<
          _$CryptoWebSocketTokenDataInstanceServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
