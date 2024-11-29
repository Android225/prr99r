import 'package:flutter/material.dart';
import 'get_it_container.dart';

class DependencyInheritedWidget extends InheritedWidget {
  final AppData data;

  DependencyInheritedWidget({
    required this.data,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static DependencyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DependencyInheritedWidget>()!;
  }
}
