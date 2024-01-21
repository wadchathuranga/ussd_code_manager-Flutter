import 'package:flutter/material.dart';

class MobitelScreen extends StatefulWidget {
  const MobitelScreen({Key? key}) : super(key: key);

  @override
  State<MobitelScreen> createState() => _MobitelScreenState();
}

class _MobitelScreenState extends State<MobitelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobitel USSD'),
      ),
      body: Center(
        child: Text('Mobitel'),
      ),
    );
  }
}
