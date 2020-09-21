// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RawUsers> _$rawUsersSerializer = new _$RawUsersSerializer();

class _$RawUsersSerializer implements StructuredSerializer<RawUsers> {
  @override
  final Iterable<Type> types = const [RawUsers, _$RawUsers];
  @override
  final String wireName = 'RawUsers';

  @override
  Iterable<Object> serialize(Serializers serializers, RawUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'users',
      serializers.serialize(object.users,
          specifiedType:
              const FullType(BuiltList, const [const FullType(RawUser)])),
    ];
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.pages != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(object.pages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RawUsers deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RawUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RawUser)]))
              as BuiltList<Object>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pages':
          result.pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RawUsers extends RawUsers {
  @override
  final BuiltList<RawUser> users;
  @override
  final int page;
  @override
  final int pages;

  factory _$RawUsers([void Function(RawUsersBuilder) updates]) =>
      (new RawUsersBuilder()..update(updates)).build();

  _$RawUsers._({this.users, this.page, this.pages}) : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('RawUsers', 'users');
    }
  }

  @override
  RawUsers rebuild(void Function(RawUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RawUsersBuilder toBuilder() => new RawUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawUsers &&
        users == other.users &&
        page == other.page &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, users.hashCode), page.hashCode), pages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RawUsers')
          ..add('users', users)
          ..add('page', page)
          ..add('pages', pages))
        .toString();
  }
}

class RawUsersBuilder implements Builder<RawUsers, RawUsersBuilder> {
  _$RawUsers _$v;

  ListBuilder<RawUser> _users;
  ListBuilder<RawUser> get users =>
      _$this._users ??= new ListBuilder<RawUser>();
  set users(ListBuilder<RawUser> users) => _$this._users = users;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _pages;
  int get pages => _$this._pages;
  set pages(int pages) => _$this._pages = pages;

  RawUsersBuilder();

  RawUsersBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _page = _$v.page;
      _pages = _$v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RawUsers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RawUsers;
  }

  @override
  void update(void Function(RawUsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RawUsers build() {
    _$RawUsers _$result;
    try {
      _$result = _$v ??
          new _$RawUsers._(users: users.build(), page: page, pages: pages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RawUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
