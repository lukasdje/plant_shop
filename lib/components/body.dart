import 'package:flutter/material.dart';
import 'package:plant_shop_app/components/categories.dart';
import 'package:plant_shop_app/components/item_card.dart';
import 'package:plant_shop_app/models/plants.dart';
import 'package:plant_shop_app/theme.dart';
import 'package:plant_shop_app/views/detail_page.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              'Plantas',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const Categories(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: plants.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              // ignore: prefer_const_constructors
              itemBuilder: ((context, index) => ItemCard(
                    plant: plants[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(plant: plants[index]))),
                  )),
            ),
          )),
        ],
      ),
    );
  }
}
