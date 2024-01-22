import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_data.dart';

class MobitelScreen extends StatefulWidget {
  const MobitelScreen({Key? key}) : super(key: key);

  @override
  State<MobitelScreen> createState() => _MobitelScreenState();
}

class _MobitelScreenState extends State<MobitelScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (tabController.index != 0) {
          setState(() => tabController.index = 0);
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mobitel USSD'),
          bottom: TabBar(
            controller: tabController,
            // labelColor: AppColors.secondary,
            // unselectedLabelColor: AppColors.whiteColor,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: const [
              Tab(text: 'Pre-Paid', icon: Icon(Icons.money)),
              Tab(text: 'Post-Paid', icon: Icon(Icons.credit_card)),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            buildBody(preUssdList),
            buildBody(postUssdList),
          ],
        ),
      ),
    );
  }

  Widget buildBody(List data) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) => buildTile(data[index]),
        ),
      ),
    );
  }

  Widget buildTile(USSDCode data) {
    return Card(
      elevation: 3,
      child: ListTile(
        title: Text(data.ussdName),
        subtitle: Text(data.ussdDesc),
        trailing: ElevatedButton(
          onPressed: () => data.isDirect
              ? FlutterPhoneDirectCaller.callNumber(data.ussdCode)
              : launchUrl(Uri.parse('tel:${data.ussdCode}')),

          child: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
