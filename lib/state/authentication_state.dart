import 'package:flutter/material.dart';

class AuthenticationState extends InheritedWidget {
  const AuthenticationState(
      {super.key, required super.child, required this.uid});

  final String uid;

  static AuthenticationState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthenticationState>();
  }

  @override
  bool updateShouldNotify(AuthenticationState oldWidget) {
    return uid != oldWidget.uid;
  }
}
