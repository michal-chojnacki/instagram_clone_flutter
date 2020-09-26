import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "result.freezed.dart";

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(@nullable T data) = Success<T>;
  const factory Result.error(Exception exception) = Error<T>;
}
