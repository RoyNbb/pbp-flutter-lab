import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Counter 7 Demo',
    theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    final String title = 'Flutter Demo Home Page';

    @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _indicator = 'GENAP';
  String _color = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _checkOddEven();
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter > 0 ?  _counter-- : _counter = _counter ;
      _checkOddEven();
    });
  }

  void _checkOddEven() {
    if(_counter % 2 == 0){
      _indicator = 'GENAP';
      _color = 'red';
    } else {
      _indicator = 'GANJIL';
      _color = 'blue';
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      
      drawer : const DrawerApp(
      ),

      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              (_indicator == 'GENAP')?
                Text(
                  '$_indicator',
                  style: const TextStyle(
                    color: Colors.red,
                  )
                )
              : Text(
                  '$_indicator',
                  style: const TextStyle(
                    color: Colors.blue,
                  )
                )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),  
            ]
          ),
        ],  
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Padding(
            padding: const EdgeInsets.all(30),
            child:FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),  
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          
        ],
      ),
    

    );
  }
}

