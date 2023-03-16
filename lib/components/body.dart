import 'package:flutter/material.dart';
import 'package:plant_shop_app/components/categories.dart';
import 'package:plant_shop_app/models/plants.dart';
import 'package:plant_shop_app/theme.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              itemBuilder: ((context, index) => ItemCard())),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            plants[0].title,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        // ignore: prefer_const_constructors
        Text(
          "R\$234",
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Plant plant;
  final Function press;
  const ItemCard({
    Key? key,
    this.plant,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              color: plants[0].color, borderRadius: BorderRadius.circular(16)),
          child: Image.asset(plants[0].image),
        ),
      ],
    );
  }
}
