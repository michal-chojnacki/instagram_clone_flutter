import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';

@injectable
class GetLikesStatusesUseCase {
  Future<Result<Map<int, bool>>> call(List<int> contentIds) async {
    return Result.success(data: Map.fromIterable(contentIds,
        key: (item) => item,
        value: (item) => false)
    );
  }
}
