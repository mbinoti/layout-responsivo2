import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway-thin'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('layout builder'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              children: [
                Container(
                    color: Colors.purpleAccent,
                    width: constraints.maxWidth * 0.50,
                    height: constraints.maxHeight * 0.50,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: constraints.maxWidth * 0.60,
                          height: constraints.maxHeight * 0.55,
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                color: Colors.blue,
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(width: 10),
                              Container(
                                color: Colors.green,
                                width: 25,
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
                Container(
                    color: Colors.green,
                    width: constraints.maxWidth * 0.50,
                    height: constraints.maxHeight * 0.50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: constraints.maxWidth * 0.50,
                              height: constraints.maxHeight * 0.50,
                              color: Colors.yellow,
                              child: const Text('gh'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            );
          },
        ),
      ),
    );
  }
}
