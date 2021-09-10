import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocinfinity/bloc%20/bloc.dart';
import 'package:flutterblocinfinity/bloc%20/event.dart';
import 'package:flutterblocinfinity/bloc%20/states.dart';

void main() {
  Bloc.observer = BlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (BuildContext context) => CounterBloc(
          CounterInitial(initial: 0),
        ),
        child: MyHomePage(title: 'Flutter Bloc '),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // CounterBloc? bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
            Text(
              'You have pushed the button this many times:',
            ),
            BlocConsumer<CounterBloc, CounterStates>(
              listener: (context, states) {
                if(states is CounterDecrementState) {
                  // if(states.counter == 30 ) {
                  //    context.read<CounterBloc>().add(CounterStopEvent());
                  // }
                  print('event * 7 decrements');
                }
                if(states is CounterIncrementState) {
                  print('event * 7 increment');
                }
                if(states is CounterStopState) {
                  print('event * 7 stop');
                }
              },
              builder: (context, states) {
                if (states is CounterIncrementState) {
                  return Text(
                    '${states.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }else if (states is CounterDecrementState) {
                  return Text(
                    // '${context.watch<CounterBloc>().counter}',
                    '${states.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (states is CounterStopState) {
                  return Text(
                    // '${context.watch<CounterBloc>().counter}',
                    '${states.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                return Text('0');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: ()=> context.read<CounterBloc>().add(CounterIncrementsEvent()) ,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: ()=> context.read<CounterBloc>().add(CounterStopEvent()) ,
            tooltip: 'Stop',
            child: Icon(Icons.stop),
          ),
          FloatingActionButton(
            onPressed: ()=> context.read<CounterBloc>().add(CounterDecrementsEvent()) ,
            tooltip: 'decrement',
            child: Icon(Icons.remove),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// () => bloc!.add(CounterIncrementsEvent())
// () => bloc!.add(CounterDecrementsEvent())