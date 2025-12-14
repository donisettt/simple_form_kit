import 'package:flutter/material.dart';
import 'package:simple_form_kit/simple_form_kit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Simple Form Kit')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                SimpleInput(
                  label: 'Email',
                  hint: 'contoh@email.com',
                  validator: Validators.email,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
