import 'package:flutter/material.dart';

class HutchScreen extends StatefulWidget {
  const HutchScreen({Key? key}) : super(key: key);

  @override
  State<HutchScreen> createState() => _HutchScreenState();
}

class _HutchScreenState extends State<HutchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hutch USSD'),
      ),
      body: Center(
        child: Text('Hutch'),
      ),
    );
  }
}
