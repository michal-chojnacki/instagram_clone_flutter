import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'paged_list.g.dart';

abstract class PagedList<T>
    implements Built<PagedList<T>, PagedListBuilder<T>> {
  BuiltList<T> get list;
  int get page;
  int get pages;

  PagedList._();

  factory PagedList([updates(PagedListBuilder<T> b)]) = _$PagedList<T>;

  factory PagedList.create(
      {@required List<T> list, @required int page, @required int pages}) {
    return PagedList((b) => b
      ..list = list.toBuiltList().toBuilder()
      ..page = page
      ..pages = pages);
  }

  static Serializer<PagedList> get serializer => _$pagedListSerializer;
}
