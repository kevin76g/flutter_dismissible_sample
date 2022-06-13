import 'package:flutter/material.dart';
import 'my_bottomnavigationbar.dart';

const applicationTitle = 'Flutter Dismissible Demo';
const applicationDescription = '国立国会図書館デジタル図書館\n保護期間満了アート';
const artDescription = '江戸風俗十二ケ月之内　六月　山王祭\n国立国会図書館ウェブサイトから転載';
const imagePath = 'assets/images/edo_fuzoku_12tsukinai.jpeg';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(applicationTitle),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            const Text(
              applicationDescription,
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Flexible(child: Image.asset(imagePath)),
            const Text(artDescription),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(
        selectedIndex: 0,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
