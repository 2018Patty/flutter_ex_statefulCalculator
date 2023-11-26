import 'package:flutter/material.dart';

class DemoStateful extends StatefulWidget {
  const DemoStateful({super.key});

  @override
  State<DemoStateful> createState() => _DemoStatefulState();
}

class _DemoStatefulState extends State<DemoStateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('StatefulDemo'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Counter : $counter'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Text('Click Me'),
              )
            ],
          ),
        ));
  }
}
