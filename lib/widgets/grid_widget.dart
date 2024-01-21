import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../screens/AirtelScreen.dart';
import '../screens/HutchScreen.dart';
import '../screens/MobitelScreen.dart';
import '../utils/app_images.dart';
import '../screens/DialogScreen.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> serviceProvider = ["Airtel", "Dialog", "Hatch", "Mobitel"];

    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: AlignedGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemCount: 4,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              if (index == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => const AirtelScreen()));
              if (index == 1) Navigator.push(context, MaterialPageRoute(builder: (context) => const DialogScreen()));
              if (index == 2) Navigator.push(context, MaterialPageRoute(builder: (context) => const HutchScreen()));
              if (index == 3) Navigator.push(context, MaterialPageRoute(builder: (context) => const MobitelScreen()));
            },
            child: buildImageCard(index, serviceProvider[index]),
          ),
      ),
    );
  }

  Widget buildImageCard(int index, spName) => Card(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(spName),
      ],
    ),
  );
}
