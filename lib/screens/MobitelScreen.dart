import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../utils/app_data.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: ussdList.length,
            itemBuilder: (context, index) => buildTile(ussdList[index]),
          ),
        ),
      ),
    );
  }

  Widget buildTile(USSDCode data) {
    return Card(
      elevation: 3,
      child: ListTile(
        title: Text(data.ussdCode),
        subtitle: Text(data.ussdDesc),
        trailing: ElevatedButton(
          onPressed: () => FlutterPhoneDirectCaller.callNumber(data.ussdCode),
          child: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
