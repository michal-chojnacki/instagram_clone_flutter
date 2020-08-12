// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_contents_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContentItemState extends ContentItemState {
  @override
  final Content content;
  @override
  final bool liked;

  factory _$ContentItemState(
          [void Function(ContentItemStateBuilder) updates]) =>
      (new ContentItemStateBuilder()..update(updates)).build();

  _$ContentItemState._({this.content, this.liked}) : super._() {
    if (content == null) {
      throw new BuiltValueNullFieldError('ContentItemState', 'content');
    }
    if (liked == null) {
      throw new BuiltValueNullFieldError('ContentItemState', 'liked');
    }
  }

  @override
  ContentItemState rebuild(void Function(ContentItemStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentItemStateBuilder toBuilder() =>
      new ContentItemStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentItemState &&
        content == other.content &&
        liked == other.liked;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), liked.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentItemState')
          ..add('content', content)
          ..add('liked', liked))
        .toString();
  }
}

class ContentItemStateBuilder
    implements Builder<ContentItemState, ContentItemStateBuilder> {
  _$ContentItemState _$v;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  bool _liked;
  bool get liked => _$this._liked;
  set liked(bool liked) => _$this._liked = liked;

  ContentItemStateBuilder();

  ContentItemStateBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content?.toBuilder();
      _liked = _$v.liked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentItemState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentItemState;
  }

  @override
  void update(void Function(ContentItemStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentItemState build() {
    _$ContentItemState _$result;
    try {
      _$result = _$v ??
          new _$ContentItemState._(content: content.build(), liked: liked);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'content';
        content.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentItemState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
