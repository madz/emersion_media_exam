// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherDetailStateTearOff {
  const _$WeatherDetailStateTearOff();

  _WeatherDetailState call(
      {required List<WeatherDayModel>? listWeatherDayModel,
      required bool isSubmitting,
      required bool isSuccess,
      required bool isFailure,
      required String info}) {
    return _WeatherDetailState(
      listWeatherDayModel: listWeatherDayModel,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

/// @nodoc
const $WeatherDetailState = _$WeatherDetailStateTearOff();

/// @nodoc
mixin _$WeatherDetailState {
  List<WeatherDayModel>? get listWeatherDayModel =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDetailStateCopyWith<WeatherDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailStateCopyWith<$Res> {
  factory $WeatherDetailStateCopyWith(
          WeatherDetailState value, $Res Function(WeatherDetailState) then) =
      _$WeatherDetailStateCopyWithImpl<$Res>;
  $Res call(
      {List<WeatherDayModel>? listWeatherDayModel,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

/// @nodoc
class _$WeatherDetailStateCopyWithImpl<$Res>
    implements $WeatherDetailStateCopyWith<$Res> {
  _$WeatherDetailStateCopyWithImpl(this._value, this._then);

  final WeatherDetailState _value;
  // ignore: unused_field
  final $Res Function(WeatherDetailState) _then;

  @override
  $Res call({
    Object? listWeatherDayModel = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? isFailure = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      listWeatherDayModel: listWeatherDayModel == freezed
          ? _value.listWeatherDayModel
          : listWeatherDayModel // ignore: cast_nullable_to_non_nullable
              as List<WeatherDayModel>?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: isFailure == freezed
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDetailStateCopyWith<$Res>
    implements $WeatherDetailStateCopyWith<$Res> {
  factory _$WeatherDetailStateCopyWith(
          _WeatherDetailState value, $Res Function(_WeatherDetailState) then) =
      __$WeatherDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WeatherDayModel>? listWeatherDayModel,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

/// @nodoc
class __$WeatherDetailStateCopyWithImpl<$Res>
    extends _$WeatherDetailStateCopyWithImpl<$Res>
    implements _$WeatherDetailStateCopyWith<$Res> {
  __$WeatherDetailStateCopyWithImpl(
      _WeatherDetailState _value, $Res Function(_WeatherDetailState) _then)
      : super(_value, (v) => _then(v as _WeatherDetailState));

  @override
  _WeatherDetailState get _value => super._value as _WeatherDetailState;

  @override
  $Res call({
    Object? listWeatherDayModel = freezed,
    Object? isSubmitting = freezed,
    Object? isSuccess = freezed,
    Object? isFailure = freezed,
    Object? info = freezed,
  }) {
    return _then(_WeatherDetailState(
      listWeatherDayModel: listWeatherDayModel == freezed
          ? _value.listWeatherDayModel
          : listWeatherDayModel // ignore: cast_nullable_to_non_nullable
              as List<WeatherDayModel>?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: isFailure == freezed
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherDetailState extends _WeatherDetailState
    with DiagnosticableTreeMixin {
  const _$_WeatherDetailState(
      {required this.listWeatherDayModel,
      required this.isSubmitting,
      required this.isSuccess,
      required this.isFailure,
      required this.info})
      : super._();

  @override
  final List<WeatherDayModel>? listWeatherDayModel;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherDetailState(listWeatherDayModel: $listWeatherDayModel, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherDetailState'))
      ..add(DiagnosticsProperty('listWeatherDayModel', listWeatherDayModel))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherDetailState &&
            const DeepCollectionEquality()
                .equals(other.listWeatherDayModel, listWeatherDayModel) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailure, isFailure) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listWeatherDayModel),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailure),
      const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$WeatherDetailStateCopyWith<_WeatherDetailState> get copyWith =>
      __$WeatherDetailStateCopyWithImpl<_WeatherDetailState>(this, _$identity);
}

abstract class _WeatherDetailState extends WeatherDetailState {
  const factory _WeatherDetailState(
      {required List<WeatherDayModel>? listWeatherDayModel,
      required bool isSubmitting,
      required bool isSuccess,
      required bool isFailure,
      required String info}) = _$_WeatherDetailState;
  const _WeatherDetailState._() : super._();

  @override
  List<WeatherDayModel>? get listWeatherDayModel;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$WeatherDetailStateCopyWith<_WeatherDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
