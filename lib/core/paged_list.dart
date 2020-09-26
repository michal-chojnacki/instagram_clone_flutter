import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'paged_list.freezed.dart';

@freezed
abstract class PagedList<T> with _$PagedList<T> {
  factory PagedList({
    @required List<T> list,
    @required int page,
    @required int pages,
  }) = _PagedList<T>;
}
