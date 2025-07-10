# L2Flutter

一个基于Flutter开发的跨平台移动应用项目。

## 项目简介

L2Flutter是一个使用Flutter框架开发的移动应用，支持iOS和Android平台。

## 开发环境要求

- Flutter SDK (推荐最新稳定版本)
- Dart SDK
- Android Studio / VS Code
- Android SDK (用于Android开发)
- Xcode (用于iOS开发，仅macOS)

## 项目结构

```
l2flutter/
├── android/          # Android平台相关代码
├── ios/             # iOS平台相关代码
├── lib/             # Dart源代码
├── test/            # 测试文件
├── assets/          # 静态资源文件
├── pubspec.yaml     # 项目依赖配置
└── README.md        # 项目说明文档
```

## 快速开始

### 1. 克隆项目

```bash
git clone <repository-url>
cd l2flutter
```

### 2. 安装依赖

```bash
flutter pub get
```

### 3. 运行项目

```bash
# 运行在连接的设备上
flutter run

# 运行在特定平台上
flutter run -d android
flutter run -d ios
```

### 4. 构建发布版本

```bash
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# iOS
flutter build ios
```

## 开发指南

### 代码规范

- 遵循Dart官方代码规范
- 使用有意义的变量和函数命名
- 添加适当的注释和文档

### 提交规范

使用约定式提交格式：

```
feat: 新功能
fix: 修复bug
docs: 文档更新
style: 代码格式调整
refactor: 代码重构
test: 测试相关
chore: 构建过程或辅助工具的变动
```

## 测试

```bash
# 运行所有测试
flutter test

# 运行特定测试文件
flutter test test/widget_test.dart
```

## 发布

### Android

1. 配置签名密钥
2. 更新版本号
3. 构建APK或App Bundle
4. 上传到Google Play Console

### iOS

1. 配置证书和描述文件
2. 更新版本号
3. 构建并上传到App Store Connect

## 贡献指南

1. Fork项目
2. 创建功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建Pull Request

## 许可证

本项目采用 [MIT License](LICENSE) 许可证。

## 联系方式

如有问题或建议，请通过以下方式联系：

- 项目Issues: [GitHub Issues](https://github.com/your-username/l2flutter/issues)
- 邮箱: your-email@example.com 