import 'package:auto_route/auto_route.dart';
import 'package:bottom_navbar/routes/router.gr.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => context.router.push(const HomeRoute()),
            child: const Text('Login')),
      ),
    );
  }
}
