class AppConstants {
  // 应用信息
  static const String appName = 'L2Flutter';
  static const String appVersion = '1.0.0';
  
  // API相关
  static const String baseUrl = 'https://api.example.com';
  static const int apiTimeout = 30000; // 30秒
  
  // 本地存储键名
  static const String userTokenKey = 'user_token';
  static const String userInfoKey = 'user_info';
  static const String settingsKey = 'app_settings';
  
  // 路由名称
  static const String homeRoute = '/';
  static const String loginRoute = '/login';
  static const String profileRoute = '/profile';
  
  // 主题相关
  static const String lightTheme = 'light';
  static const String darkTheme = 'dark';
  static const String systemTheme = 'system';
  
  // 网络状态
  static const String connected = 'connected';
  static const String disconnected = 'disconnected';
  
  // 权限相关
  static const String cameraPermission = 'camera';
  static const String storagePermission = 'storage';
  static const String locationPermission = 'location';
} 