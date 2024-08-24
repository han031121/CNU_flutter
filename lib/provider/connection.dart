import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BaseController{
  static BaseController? _connection;

  static BaseController get instance{
    _connection ??= BaseController._();
    return _connection!;
  }

  BaseController._();

  final Map<String,String> _headers = {"Content-Type": "application/json"};

  Future<http.Response> get(String uri) {
    return http.get(
      _createUri(uri),
      headers: _headers,
    ).then((res) {
      return res;
    });
  }

  Future<http.Response> post(String uri) {
    return http.get(
      _createUri(uri),
      headers: _headers,
    ).then((res) {
      return res;
    });
  }

  Future<http.Response> delete(String uri) {
    return http.get(
      _createUri(uri),
      headers: _headers,
    ).then((res) {
      return res;
    });
  }

  Future<http.Response> patch(String uri) {
    return http.get(
      _createUri(uri),
      headers: _headers,
    ).then((res) {
      return res;
    });
  }

  Future<http.Response> put(String uri) {
    return http.get(
      _createUri(uri),
      headers: _headers,
    ).then((res) {
      return res;
    });
  }

  Map<String, dynamic> getJsonMapOrCrash(String body, {String? key}) {
    final json = jsonDecode(body) as Map<String, dynamic>;
    if (key != null) {
      return json[key] as Map<String, dynamic>;
    } else {
      return json;
    }
  }

  Iterable getIterableOrCrash(String body) {
    final json = (jsonDecode(body) as Map<String, dynamic>) as Iterable;
    return json;
  }

  Uri _createUri(String path) {
    return Uri.parse("https://sdvx.in/$path");
  }
}