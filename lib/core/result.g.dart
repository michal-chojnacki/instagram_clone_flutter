// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class Result<T> extends Equatable {
  const Result(this._type);

  factory Result.success({@required T data}) = Success<T>;

  factory Result.error({@required Exception exception}) = Error<T>;

  final _Result _type;

//ignore: missing_return
  FutureOr<R> when<R>(
      {@required FutureOr<R> Function(Success<T>) success,
      @required FutureOr<R> Function(Error<T>) error}) {
    assert(() {
      if (success == null || error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _Result.Success:
        return success(this as Success);
      case _Result.Error:
        return error(this as Error);
    }
  }

  FutureOr<R> whenOrElse<R>(
      {FutureOr<R> Function(Success<T>) success,
      FutureOr<R> Function(Error<T>) error,
      @required FutureOr<R> Function(Result<T>) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _Result.Success:
        if (success == null) break;
        return success(this as Success);
      case _Result.Error:
        if (error == null) break;
        return error(this as Error);
    }
    return orElse(this);
  }

  FutureOr<void> whenPartial(
      {FutureOr<void> Function(Success<T>) success,
      FutureOr<void> Function(Error<T>) error}) {
    assert(() {
      if (success == null && error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _Result.Success:
        if (success == null) break;
        return success(this as Success);
      case _Result.Error:
        if (error == null) break;
        return error(this as Error);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Success<T> extends Result<T> {
  const Success({@required this.data}) : super(_Result.Success);

  final T data;

  @override
  String toString() => 'Success(data:${this.data})';
  @override
  List get props => [data];
}

@immutable
class Error<T> extends Result<T> {
  const Error({@required this.exception}) : super(_Result.Error);

  final Exception exception;

  @override
  String toString() => 'Error(exception:${this.exception})';
  @override
  List get props => [exception];
}
