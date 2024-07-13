import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

// ignore
/// StatlessWidget
/// keys
/// BuildContext : Later On
///
/// Today:
/// Scaffold: 10-15
/// Text: 10-15
/// spread ...,...? spread aware operator
/// [aaa,[a,b,c,d],zzz]

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names =
        List<String>.generate(10, (index) => Faker().food.dish());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fayoum Day 6",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Start"),
          ...(names.map((name) => Text(name))),
          const Text("End OF Menu")
        ],
      ),
    );
  }
}
