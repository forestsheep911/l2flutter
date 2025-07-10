import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:l2flutter/main.dart';
import 'package:l2flutter/providers/app_provider.dart';

void main() {
  group('L2Flutter App Tests', () {
    testWidgets('应用启动测试', (WidgetTester tester) async {
      // 构建应用
      await tester.pumpWidget(const MyApp());

      // 验证应用标题存在
      expect(find.text('L2Flutter'), findsOneWidget);
    });

    testWidgets('计数器功能测试', (WidgetTester tester) async {
      // 构建应用
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (_) => AppProvider(),
          child: const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Consumer<AppProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      children: [
                        Text('计数器: ${provider.counter}'),
                        ElevatedButton(
                          onPressed: provider.increment,
                          child: Text('增加'),
                        ),
                        ElevatedButton(
                          onPressed: provider.decrement,
                          child: Text('减少'),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );

      // 验证初始计数器值为0
      expect(find.text('计数器: 0'), findsOneWidget);

      // 点击增加按钮
      await tester.tap(find.text('增加'));
      await tester.pump();

      // 验证计数器值变为1
      expect(find.text('计数器: 1'), findsOneWidget);

      // 点击减少按钮
      await tester.tap(find.text('减少'));
      await tester.pump();

      // 验证计数器值变为0
      expect(find.text('计数器: 0'), findsOneWidget);
    });
  });
} 