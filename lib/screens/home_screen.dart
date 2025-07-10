import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('L2Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '欢迎使用 L2Flutter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '这是一个Flutter项目的基础模板',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            Consumer<AppProvider>(
              builder: (context, appProvider, child) {
                return Column(
                  children: [
                    Text(
                      '计数器: ${appProvider.counter}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => appProvider.increment(),
                          child: const Text('增加'),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () => appProvider.decrement(),
                          child: const Text('减少'),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
} 