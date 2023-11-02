// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultData {
  List<Character> get characters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res, ResultData>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res, $Val extends ResultData>
    implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDataImplCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$ResultDataImplCopyWith(
          _$ResultDataImpl value, $Res Function(_$ResultDataImpl) then) =
      __$$ResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$ResultDataImplCopyWithImpl<$Res>
    extends _$ResultDataCopyWithImpl<$Res, _$ResultDataImpl>
    implements _$$ResultDataImplCopyWith<$Res> {
  __$$ResultDataImplCopyWithImpl(
      _$ResultDataImpl _value, $Res Function(_$ResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$ResultDataImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$ResultDataImpl implements _ResultData {
  const _$ResultDataImpl({required final List<Character> characters})
      : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'ResultData(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      __$$ResultDataImplCopyWithImpl<_$ResultDataImpl>(this, _$identity);
}

abstract class _ResultData implements ResultData {
  const factory _ResultData({required final List<Character> characters}) =
      _$ResultDataImpl;

  @override
  List<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Character {
  String get text => throw _privateConstructorUsedError;
  CharacterIcon get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call({String text, CharacterIcon icon});

  $CharacterIconCopyWith<$Res> get icon;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CharacterIcon,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterIconCopyWith<$Res> get icon {
    return $CharacterIconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, CharacterIcon icon});

  @override
  $CharacterIconCopyWith<$Res> get icon;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_$CharacterImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CharacterIcon,
    ));
  }
}

/// @nodoc

class _$CharacterImpl implements _Character {
  const _$CharacterImpl({required this.text, required this.icon});

  @override
  final String text;
  @override
  final CharacterIcon icon;

  @override
  String toString() {
    return 'Character(text: $text, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);
}

abstract class _Character implements Character {
  const factory _Character(
      {required final String text,
      required final CharacterIcon icon}) = _$CharacterImpl;

  @override
  String get text;
  @override
  CharacterIcon get icon;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterIcon {
  String get height => throw _privateConstructorUsedError;
  String get width => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterIconCopyWith<CharacterIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterIconCopyWith<$Res> {
  factory $CharacterIconCopyWith(
          CharacterIcon value, $Res Function(CharacterIcon) then) =
      _$CharacterIconCopyWithImpl<$Res, CharacterIcon>;
  @useResult
  $Res call({String height, String width, String url});
}

/// @nodoc
class _$CharacterIconCopyWithImpl<$Res, $Val extends CharacterIcon>
    implements $CharacterIconCopyWith<$Res> {
  _$CharacterIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterIconImplCopyWith<$Res>
    implements $CharacterIconCopyWith<$Res> {
  factory _$$CharacterIconImplCopyWith(
          _$CharacterIconImpl value, $Res Function(_$CharacterIconImpl) then) =
      __$$CharacterIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String height, String width, String url});
}

/// @nodoc
class __$$CharacterIconImplCopyWithImpl<$Res>
    extends _$CharacterIconCopyWithImpl<$Res, _$CharacterIconImpl>
    implements _$$CharacterIconImplCopyWith<$Res> {
  __$$CharacterIconImplCopyWithImpl(
      _$CharacterIconImpl _value, $Res Function(_$CharacterIconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? url = null,
  }) {
    return _then(_$CharacterIconImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterIconImpl implements _CharacterIcon {
  const _$CharacterIconImpl(
      {required this.height, required this.width, required this.url});

  @override
  final String height;
  @override
  final String width;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterIcon(height: $height, width: $width, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterIconImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height, width, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterIconImplCopyWith<_$CharacterIconImpl> get copyWith =>
      __$$CharacterIconImplCopyWithImpl<_$CharacterIconImpl>(this, _$identity);
}

abstract class _CharacterIcon implements CharacterIcon {
  const factory _CharacterIcon(
      {required final String height,
      required final String width,
      required final String url}) = _$CharacterIconImpl;

  @override
  String get height;
  @override
  String get width;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterIconImplCopyWith<_$CharacterIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
