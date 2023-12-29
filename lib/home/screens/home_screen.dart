import 'package:counter/home/widgets/floating_action_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text("No es posible decrementar más."),
          action: SnackBarAction(label: "Aceptar", onPressed: () {}),
        ));
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_counter",
                style: const TextStyle(fontSize: 50.0),
              ),
              Text(
                _counter == 1 ? "Click" : "Clicks",
                style: const TextStyle(fontSize: 25.0),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButtons(
          increaseCounter: _increaseCounter,
          decreaseCounter: _decreaseCounter,
          resetCounter: _resetCounter,
        ));
  }
}
