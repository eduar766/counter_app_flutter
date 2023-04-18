import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Clicks Counter', style: fontSize30,),
            Text('$counter', style: fontSize30,)
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => setState(() => counter--),
          ),
          //const SizedBox(width: 20,), 
          FloatingActionButton(
            child: const Icon(Icons.reset_tv),
            onPressed: () => setState(() => counter = 0),
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            // onPressed: () { 
            //   counter++;
            //   setState(() {});
            //  },
            onPressed: () => setState(() => counter++),
          ),
        ],
      ),
    );
  }
}