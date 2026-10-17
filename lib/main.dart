import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const DiceApp());

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roll the Dice',
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: const Text('Roll the Dice')),
        body: const Center(child: DiceRoller()),
      ),
    );
  }
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final Random randomizer = Random();
  int currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 180,
          height: 180,
          semanticLabel: 'Kocka: $currentDice',
        ),
        const SizedBox(height: 24),
        Text('Hodená hodnota: $currentDice'),
        const SizedBox(height: 16),
        ElevatedButton(onPressed: rollDice, child: const Text('Hoď kockou')),
      ],
    );
  }
}
