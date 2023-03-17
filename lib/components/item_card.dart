import 'package:flutter/material.dart';
import 'package:plant_shop_app/theme.dart';

import '../models/plants.dart';

class ItemCard extends StatelessWidget {
  final Plant plant;
  final Function press;
  const ItemCard({
    Key? key,
    required this.plant,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                    color: plant.color,
                    borderRadius: BorderRadius.circular(16)),
                child: Image.asset(plant.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              plant.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
          Text(
            'R\$ ${plant.price}',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }
}
