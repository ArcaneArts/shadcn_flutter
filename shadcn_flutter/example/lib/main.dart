import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      title: 'My App',
      home: const CounterPage(),
      theme: ThemeData(
        colorScheme: ColorSchemes.darkZinc(),
        radius: 0.7,
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          title: const Text('Counter App'),
          subtitle: const Text('A simple counter app'),
          leading: [
            GhostButton(
              onPressed: () {
                openDrawer(
                  context: context,
                  builder: (context) {
                    return Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                        maxHeight: 300,
                      ),
                      child: const Text('Drawer'),
                    );
                  },
                  position: OverlayPosition.top,
                );
              },
              density: ButtonDensity.icon,
              child: const Icon(Icons.menu),
            ),
          ],
          trailing: [
            GhostButton(
              density: ButtonDensity.icon,
              onPressed: () {
                openSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                        maxHeight: 200,
                      ),
                      child: const Text('Sheet'),
                    );
                  },
                  position: OverlayPosition.right,
                );
              },
              child: const Icon(Icons.search),
            ),
          ],
        ),
        const Divider(),
      ],
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                textAlign: TextAlign.center,
              ).p(),
              Text(
                '$_counter',
              ).h1(),
              PrimaryButton(
                onPressed: _incrementCounter,
                density: ButtonDensity.icon,
                child: const Icon(Icons.add),
              ).p(),
            ],
          ),
        ),
      ),
    );
  }
}
