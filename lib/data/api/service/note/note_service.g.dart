// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NoteService implements NoteService {
  _NoteService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://127.0.0.1:3000/api/tasks';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ApiNoteResponse> create(token, body) async {
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(body, 'body');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'access_token': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiNoteResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<void> delete(token, id) async {
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.request<void>('/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{r'access_token': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }

  @override
  Future<ApiNoteResponse> edit(token, body, id) async {
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(body, 'body');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>('/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{r'access_token': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiNoteResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<ApiNoteResponse>> receive(token) async {
    ArgumentError.checkNotNull(token, 'token');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'access_token': token},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => ApiNoteResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
