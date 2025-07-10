# 开发指南

## 环境准备

### 1. 安装Flutter SDK

确保你已经安装了Flutter SDK，可以通过以下命令检查：

```bash
flutter doctor
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

## 项目结构说明

```
lib/
├── main.dart              # 应用入口文件
├── screens/               # 页面文件
│   └── home_screen.dart   # 主页面
├── widgets/               # 可复用组件
├── models/                # 数据模型
├── services/              # 服务层
│   └── api_service.dart   # API服务
├── providers/             # 状态管理
│   └── app_provider.dart  # 应用状态
└── utils/                 # 工具类
    └── constants.dart     # 常量定义
```

## 开发规范

### 1. 代码风格

- 遵循Dart官方代码规范
- 使用有意义的变量和函数命名
- 添加适当的注释和文档
- 使用`flutter_lints`进行代码检查

### 2. 文件命名

- 文件名使用小写字母和下划线
- 类名使用大驼峰命名法
- 变量和函数名使用小驼峰命名法
- 常量使用大写字母和下划线

### 3. 目录结构

- `screens/`: 存放页面文件
- `widgets/`: 存放可复用组件
- `models/`: 存放数据模型
- `services/`: 存放服务层代码
- `providers/`: 存放状态管理代码
- `utils/`: 存放工具类和常量

### 4. 状态管理

使用Provider进行状态管理：

```dart
// 创建Provider
class MyProvider extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  
  void increment() {
    _counter++;
    notifyListeners();
  }
}

// 使用Provider
Consumer<MyProvider>(
  builder: (context, provider, child) {
    return Text('${provider.counter}');
  },
)
```

### 5. 路由管理

使用go_router进行路由管理：

```dart
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
```

## 测试

### 1. 单元测试

```bash
flutter test
```

### 2. 集成测试

```bash
flutter test integration_test/
```

### 3. Widget测试

```dart
testWidgets('测试计数器', (WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  expect(find.text('0'), findsOneWidget);
});
```

## 构建和发布

### 1. 构建Android APK

```bash
flutter build apk
```

### 2. 构建Android App Bundle

```bash
flutter build appbundle
```

### 3. 构建iOS

```bash
flutter build ios
```

## 常用命令

```bash
# 获取依赖
flutter pub get

# 升级依赖
flutter pub upgrade

# 运行测试
flutter test

# 分析代码
flutter analyze

# 格式化代码
dart format .

# 清理构建缓存
flutter clean

# 重新构建
flutter pub get
```

## 调试技巧

### 1. 使用print调试

```dart
print('调试信息: $variable');
```

### 2. 使用debugPrint

```dart
debugPrint('调试信息: $variable');
```

### 3. 使用断点

在IDE中设置断点进行调试。

### 4. 使用Flutter Inspector

在调试模式下使用Flutter Inspector查看Widget树。

## 性能优化

### 1. 使用const构造函数

```dart
const Text('Hello World')
```

### 2. 避免不必要的重建

```dart
// 使用Consumer而不是整个Provider
Consumer<MyProvider>(
  builder: (context, provider, child) {
    return Text('${provider.counter}');
  },
)
```

### 3. 使用ListView.builder

```dart
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(title: Text(items[index]));
  },
)
```

## 常见问题

### 1. 依赖冲突

如果遇到依赖冲突，可以：

```bash
flutter pub deps
flutter pub outdated
```

### 2. 构建失败

清理缓存后重新构建：

```bash
flutter clean
flutter pub get
flutter run
```

### 3. 热重载不工作

重启应用：

```bash
flutter run
```

## 提交规范

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

示例：
```bash
git commit -m "feat: 添加用户登录功能"
git commit -m "fix: 修复计数器显示问题"
git commit -m "docs: 更新README文档"
``` 