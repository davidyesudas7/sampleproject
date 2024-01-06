// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdata value) getdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Getdata value)? getdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdata value)? getdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleBlocEventCopyWith<$Res> {
  factory $SampleBlocEventCopyWith(
          SampleBlocEvent value, $Res Function(SampleBlocEvent) then) =
      _$SampleBlocEventCopyWithImpl<$Res, SampleBlocEvent>;
}

/// @nodoc
class _$SampleBlocEventCopyWithImpl<$Res, $Val extends SampleBlocEvent>
    implements $SampleBlocEventCopyWith<$Res> {
  _$SampleBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetdataImplCopyWith<$Res> {
  factory _$$GetdataImplCopyWith(
          _$GetdataImpl value, $Res Function(_$GetdataImpl) then) =
      __$$GetdataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetdataImplCopyWithImpl<$Res>
    extends _$SampleBlocEventCopyWithImpl<$Res, _$GetdataImpl>
    implements _$$GetdataImplCopyWith<$Res> {
  __$$GetdataImplCopyWithImpl(
      _$GetdataImpl _value, $Res Function(_$GetdataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetdataImpl implements _Getdata {
  const _$GetdataImpl();

  @override
  String toString() {
    return 'SampleBlocEvent.getdata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetdataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getdata,
  }) {
    return getdata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getdata,
  }) {
    return getdata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getdata,
    required TResult orElse(),
  }) {
    if (getdata != null) {
      return getdata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdata value) getdata,
  }) {
    return getdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Getdata value)? getdata,
  }) {
    return getdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdata value)? getdata,
    required TResult orElse(),
  }) {
    if (getdata != null) {
      return getdata(this);
    }
    return orElse();
  }
}

abstract class _Getdata implements SampleBlocEvent {
  const factory _Getdata() = _$GetdataImpl;
}

/// @nodoc
mixin _$SampleBlocState {
  bool get dataloading => throw _privateConstructorUsedError;
  List<HomePagemodel>? get data => throw _privateConstructorUsedError;
  String? get errormessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleBlocStateCopyWith<SampleBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleBlocStateCopyWith<$Res> {
  factory $SampleBlocStateCopyWith(
          SampleBlocState value, $Res Function(SampleBlocState) then) =
      _$SampleBlocStateCopyWithImpl<$Res, SampleBlocState>;
  @useResult
  $Res call(
      {bool dataloading, List<HomePagemodel>? data, String? errormessage});
}

/// @nodoc
class _$SampleBlocStateCopyWithImpl<$Res, $Val extends SampleBlocState>
    implements $SampleBlocStateCopyWith<$Res> {
  _$SampleBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataloading = null,
    Object? data = freezed,
    Object? errormessage = freezed,
  }) {
    return _then(_value.copyWith(
      dataloading: null == dataloading
          ? _value.dataloading
          : dataloading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HomePagemodel>?,
      errormessage: freezed == errormessage
          ? _value.errormessage
          : errormessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleBlocStateImplCopyWith<$Res>
    implements $SampleBlocStateCopyWith<$Res> {
  factory _$$SampleBlocStateImplCopyWith(_$SampleBlocStateImpl value,
          $Res Function(_$SampleBlocStateImpl) then) =
      __$$SampleBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool dataloading, List<HomePagemodel>? data, String? errormessage});
}

/// @nodoc
class __$$SampleBlocStateImplCopyWithImpl<$Res>
    extends _$SampleBlocStateCopyWithImpl<$Res, _$SampleBlocStateImpl>
    implements _$$SampleBlocStateImplCopyWith<$Res> {
  __$$SampleBlocStateImplCopyWithImpl(
      _$SampleBlocStateImpl _value, $Res Function(_$SampleBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataloading = null,
    Object? data = freezed,
    Object? errormessage = freezed,
  }) {
    return _then(_$SampleBlocStateImpl(
      dataloading: null == dataloading
          ? _value.dataloading
          : dataloading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HomePagemodel>?,
      errormessage: freezed == errormessage
          ? _value.errormessage
          : errormessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SampleBlocStateImpl implements _SampleBlocState {
  const _$SampleBlocStateImpl(
      {required this.dataloading,
      final List<HomePagemodel>? data,
      this.errormessage})
      : _data = data;

  @override
  final bool dataloading;
  final List<HomePagemodel>? _data;
  @override
  List<HomePagemodel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errormessage;

  @override
  String toString() {
    return 'SampleBlocState(dataloading: $dataloading, data: $data, errormessage: $errormessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleBlocStateImpl &&
            (identical(other.dataloading, dataloading) ||
                other.dataloading == dataloading) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errormessage, errormessage) ||
                other.errormessage == errormessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataloading,
      const DeepCollectionEquality().hash(_data), errormessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleBlocStateImplCopyWith<_$SampleBlocStateImpl> get copyWith =>
      __$$SampleBlocStateImplCopyWithImpl<_$SampleBlocStateImpl>(
          this, _$identity);
}

abstract class _SampleBlocState implements SampleBlocState {
  const factory _SampleBlocState(
      {required final bool dataloading,
      final List<HomePagemodel>? data,
      final String? errormessage}) = _$SampleBlocStateImpl;

  @override
  bool get dataloading;
  @override
  List<HomePagemodel>? get data;
  @override
  String? get errormessage;
  @override
  @JsonKey(ignore: true)
  _$$SampleBlocStateImplCopyWith<_$SampleBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
