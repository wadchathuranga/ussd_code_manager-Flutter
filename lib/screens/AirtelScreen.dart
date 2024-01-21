import 'package:flutter/material.dart';

class AirtelScreen extends StatefulWidget {
  const AirtelScreen({Key? key}) : super(key: key);

  @override
  State<AirtelScreen> createState() => _AirtelScreenState();
}

class _AirtelScreenState extends State<AirtelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Airtel USSD'),
      ),
      body: Center(
        child: Text('Airtel'),
      ),
    );
  }
}
