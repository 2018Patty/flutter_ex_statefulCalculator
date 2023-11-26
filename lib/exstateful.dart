import 'package:flutter/material.dart';

class ExStateFul extends StatefulWidget {
  const ExStateFul({super.key});

  @override
  State<ExStateFul> createState() => _ExStateFulState();
}

class _ExStateFulState extends State<ExStateFul> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double buttonWidth = widthScreen / 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ex StateFul'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Text(
              '$num',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Column(
            children: [
              Wrap(
                children: [
                  SizedBox(
                    width: buttonWidth,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 1;
                        });
                      },
                      child: const Text('1'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 2;
                        });
                      },
                      child: const Text('2'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 3;
                        });
                      },
                      child: const Text('3'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 4;
                        });
                      },
                      child: const Text('4'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
