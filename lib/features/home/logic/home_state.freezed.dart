// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpecializationLoadingStateImplCopyWith<$Res> {
  factory _$$SpecializationLoadingStateImplCopyWith(
          _$SpecializationLoadingStateImpl value,
          $Res Function(_$SpecializationLoadingStateImpl) then) =
      __$$SpecializationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecializationLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationLoadingStateImpl>
    implements _$$SpecializationLoadingStateImplCopyWith<$Res> {
  __$$SpecializationLoadingStateImplCopyWithImpl(
      _$SpecializationLoadingStateImpl _value,
      $Res Function(_$SpecializationLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecializationLoadingStateImpl implements SpecializationLoadingState {
  const _$SpecializationLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class SpecializationLoadingState implements HomeState {
  const factory SpecializationLoadingState() = _$SpecializationLoadingStateImpl;
}

/// @nodoc
abstract class _$$SpecializationSuccessStateImplCopyWith<$Res> {
  factory _$$SpecializationSuccessStateImplCopyWith(
          _$SpecializationSuccessStateImpl value,
          $Res Function(_$SpecializationSuccessStateImpl) then) =
      __$$SpecializationSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SpecializationData>? specializationData});
}

/// @nodoc
class __$$SpecializationSuccessStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationSuccessStateImpl>
    implements _$$SpecializationSuccessStateImplCopyWith<$Res> {
  __$$SpecializationSuccessStateImplCopyWithImpl(
      _$SpecializationSuccessStateImpl _value,
      $Res Function(_$SpecializationSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationData = freezed,
  }) {
    return _then(_$SpecializationSuccessStateImpl(
      specializationData: freezed == specializationData
          ? _value._specializationData
          : specializationData // ignore: cast_nullable_to_non_nullable
              as List<SpecializationData>?,
    ));
  }
}

/// @nodoc

class _$SpecializationSuccessStateImpl implements SpecializationSuccessState {
  const _$SpecializationSuccessStateImpl(
      {required final List<SpecializationData>? specializationData})
      : _specializationData = specializationData;

  final List<SpecializationData>? _specializationData;
  @override
  List<SpecializationData>? get specializationData {
    final value = _specializationData;
    if (value == null) return null;
    if (_specializationData is EqualUnmodifiableListView)
      return _specializationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.specializationSuccess(specializationData: $specializationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._specializationData, _specializationData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_specializationData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationSuccessStateImplCopyWith<_$SpecializationSuccessStateImpl>
      get copyWith => __$$SpecializationSuccessStateImplCopyWithImpl<
          _$SpecializationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) {
    return specializationSuccess(specializationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) {
    return specializationSuccess?.call(specializationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(specializationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) {
    return specializationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) {
    return specializationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecializationSuccessState implements HomeState {
  const factory SpecializationSuccessState(
          {required final List<SpecializationData>? specializationData}) =
      _$SpecializationSuccessStateImpl;

  List<SpecializationData>? get specializationData;
  @JsonKey(ignore: true)
  _$$SpecializationSuccessStateImplCopyWith<_$SpecializationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationErrorStateImplCopyWith<$Res> {
  factory _$$SpecializationErrorStateImplCopyWith(
          _$SpecializationErrorStateImpl value,
          $Res Function(_$SpecializationErrorStateImpl) then) =
      __$$SpecializationErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SpecializationErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationErrorStateImpl>
    implements _$$SpecializationErrorStateImplCopyWith<$Res> {
  __$$SpecializationErrorStateImplCopyWithImpl(
      _$SpecializationErrorStateImpl _value,
      $Res Function(_$SpecializationErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SpecializationErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpecializationErrorStateImpl implements SpecializationErrorState {
  const _$SpecializationErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.specializationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationErrorStateImplCopyWith<_$SpecializationErrorStateImpl>
      get copyWith => __$$SpecializationErrorStateImplCopyWithImpl<
          _$SpecializationErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) {
    return specializationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) {
    return specializationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) {
    return specializationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) {
    return specializationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(this);
    }
    return orElse();
  }
}

abstract class SpecializationErrorState implements HomeState {
  const factory SpecializationErrorState({required final String message}) =
      _$SpecializationErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SpecializationErrorStateImplCopyWith<_$SpecializationErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsSuccessStateImplCopyWith<$Res> {
  factory _$$DoctorsSuccessStateImplCopyWith(_$DoctorsSuccessStateImpl value,
          $Res Function(_$DoctorsSuccessStateImpl) then) =
      __$$DoctorsSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctors>? doctorsList});
}

/// @nodoc
class __$$DoctorsSuccessStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DoctorsSuccessStateImpl>
    implements _$$DoctorsSuccessStateImplCopyWith<$Res> {
  __$$DoctorsSuccessStateImplCopyWithImpl(_$DoctorsSuccessStateImpl _value,
      $Res Function(_$DoctorsSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorsList = freezed,
  }) {
    return _then(_$DoctorsSuccessStateImpl(
      doctorsList: freezed == doctorsList
          ? _value._doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List<Doctors>?,
    ));
  }
}

/// @nodoc

class _$DoctorsSuccessStateImpl implements DoctorsSuccessState {
  const _$DoctorsSuccessStateImpl({required final List<Doctors>? doctorsList})
      : _doctorsList = doctorsList;

  final List<Doctors>? _doctorsList;
  @override
  List<Doctors>? get doctorsList {
    final value = _doctorsList;
    if (value == null) return null;
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.doctorsSuccess(doctorsList: $doctorsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._doctorsList, _doctorsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doctorsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsSuccessStateImplCopyWith<_$DoctorsSuccessStateImpl> get copyWith =>
      __$$DoctorsSuccessStateImplCopyWithImpl<_$DoctorsSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) {
    return doctorsSuccess(doctorsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) {
    return doctorsSuccess?.call(doctorsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(doctorsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) {
    return doctorsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) {
    return doctorsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorsSuccessState implements HomeState {
  const factory DoctorsSuccessState(
      {required final List<Doctors>? doctorsList}) = _$DoctorsSuccessStateImpl;

  List<Doctors>? get doctorsList;
  @JsonKey(ignore: true)
  _$$DoctorsSuccessStateImplCopyWith<_$DoctorsSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsErrorStateImplCopyWith<$Res> {
  factory _$$DoctorsErrorStateImplCopyWith(_$DoctorsErrorStateImpl value,
          $Res Function(_$DoctorsErrorStateImpl) then) =
      __$$DoctorsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DoctorsErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DoctorsErrorStateImpl>
    implements _$$DoctorsErrorStateImplCopyWith<$Res> {
  __$$DoctorsErrorStateImplCopyWithImpl(_$DoctorsErrorStateImpl _value,
      $Res Function(_$DoctorsErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DoctorsErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorsErrorStateImpl implements DoctorsErrorState {
  const _$DoctorsErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.doctorsError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsErrorStateImplCopyWith<_$DoctorsErrorStateImpl> get copyWith =>
      __$$DoctorsErrorStateImplCopyWithImpl<_$DoctorsErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationData)
        specializationSuccess,
    required TResult Function(String message) specializationError,
    required TResult Function(List<Doctors>? doctorsList) doctorsSuccess,
    required TResult Function(String message) doctorsError,
  }) {
    return doctorsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult? Function(String message)? specializationError,
    TResult? Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult? Function(String message)? doctorsError,
  }) {
    return doctorsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationData)?
        specializationSuccess,
    TResult Function(String message)? specializationError,
    TResult Function(List<Doctors>? doctorsList)? doctorsSuccess,
    TResult Function(String message)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationLoadingState value)
        specializationLoading,
    required TResult Function(SpecializationSuccessState value)
        specializationSuccess,
    required TResult Function(SpecializationErrorState value)
        specializationError,
    required TResult Function(DoctorsSuccessState value) doctorsSuccess,
    required TResult Function(DoctorsErrorState value) doctorsError,
  }) {
    return doctorsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationLoadingState value)? specializationLoading,
    TResult? Function(SpecializationSuccessState value)? specializationSuccess,
    TResult? Function(SpecializationErrorState value)? specializationError,
    TResult? Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult? Function(DoctorsErrorState value)? doctorsError,
  }) {
    return doctorsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationLoadingState value)? specializationLoading,
    TResult Function(SpecializationSuccessState value)? specializationSuccess,
    TResult Function(SpecializationErrorState value)? specializationError,
    TResult Function(DoctorsSuccessState value)? doctorsSuccess,
    TResult Function(DoctorsErrorState value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(this);
    }
    return orElse();
  }
}

abstract class DoctorsErrorState implements HomeState {
  const factory DoctorsErrorState({required final String message}) =
      _$DoctorsErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DoctorsErrorStateImplCopyWith<_$DoctorsErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
