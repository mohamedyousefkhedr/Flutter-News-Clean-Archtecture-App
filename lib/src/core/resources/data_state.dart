// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T  data;
  final DioError  error;

  const DataState({  this.data,   this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data); 
}


class DataFailed <T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error); 
}
