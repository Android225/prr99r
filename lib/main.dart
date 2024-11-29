import 'package:flutter/material.dart';
import 'dependency_inherited_widget.dart';
import 'get_it_container.dart';
import 'package:get_it/get_it.dart';

void main() {
  setupGetIt();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dependency Injection Example',
      home: DependencyInheritedWidget(
        data: AppData('Hello from InheritedWidget'),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Dependency Injection Example'),
          ),
          body: Column(
            children: [
              DataFromInheritedWidget(),
              SizedBox(height: 20),
              DataFromGetIt(),
            ],
          ),
        ),
      ),
    );
  }
}

class DataFromInheritedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = DependencyInheritedWidget.of(context).data;
    return Text('Получаем данные из InheritedWidget \n Data: $data');
  }
}

class DataFromGetIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = getIt<AppDataFromGetIt>();
    return Text('\nПолучаем данные из GetIt \n Data: ${data.value}');
  }
}
