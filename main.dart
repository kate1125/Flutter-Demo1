import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _decrementCounter() {
    setState(() {
      if(_counter > 0){
        _counter--;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if(_counter < 20){
        _counter++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text( //元件
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter', //拿counter的值
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () {
                        _incrementCounter();
                      },
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 40),
                    FloatingActionButton(
                      onPressed: () {
                        _decrementCounter();
                      },
                      child: const Icon(Icons.remove),
                    )
                  ],
                ),
              ],
            )
        )
    );
  }
}
