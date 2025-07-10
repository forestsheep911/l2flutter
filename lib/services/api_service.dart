import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();

  final String _baseUrl = AppConstants.baseUrl;

  // GET请求
  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl$endpoint'),
        headers: await _getHeaders(),
      ).timeout(Duration(milliseconds: AppConstants.apiTimeout));

      return _handleResponse(response);
    } catch (e) {
      throw Exception('网络请求失败: $e');
    }
  }

  // POST请求
  Future<Map<String, dynamic>> post(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl$endpoint'),
        headers: await _getHeaders(),
        body: json.encode(data),
      ).timeout(Duration(milliseconds: AppConstants.apiTimeout));

      return _handleResponse(response);
    } catch (e) {
      throw Exception('网络请求失败: $e');
    }
  }

  // PUT请求
  Future<Map<String, dynamic>> put(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await http.put(
        Uri.parse('$_baseUrl$endpoint'),
        headers: await _getHeaders(),
        body: json.encode(data),
      ).timeout(Duration(milliseconds: AppConstants.apiTimeout));

      return _handleResponse(response);
    } catch (e) {
      throw Exception('网络请求失败: $e');
    }
  }

  // DELETE请求
  Future<Map<String, dynamic>> delete(String endpoint) async {
    try {
      final response = await http.delete(
        Uri.parse('$_baseUrl$endpoint'),
        headers: await _getHeaders(),
      ).timeout(Duration(milliseconds: AppConstants.apiTimeout));

      return _handleResponse(response);
    } catch (e) {
      throw Exception('网络请求失败: $e');
    }
  }

  // 获取请求头
  Future<Map<String, String>> _getHeaders() async {
    // TODO: 从本地存储获取token
    final token = ''; // await StorageService.getToken();
    
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      if (token.isNotEmpty) 'Authorization': 'Bearer $token',
    };
  }

  // 处理响应
  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('请求失败: ${response.statusCode} - ${response.body}');
    }
  }
} 