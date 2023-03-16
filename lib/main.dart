import 'package:flutter/material.dart';
import 'package:plant_shop_app/theme.dart';
import 'package:plant_shop_app/views/home_page.dart';
import 'package:plant_shop_app/views/wellcome_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      home: const HomePage(),
    );
  }
}
