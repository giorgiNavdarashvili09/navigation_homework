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
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OtherPage1(),
                  ),
                );
              },
              child: Text("OtherPage1")),
          TextButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => OtherPage2(),
              ),
            );
          }, child: Text("OtherPage2"))
        ],
      ),
    );
  }
}

class OtherPage1 extends StatelessWidget {
  const OtherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OtherPage1"),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}

class OtherPage2 extends StatelessWidget {
  const OtherPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OtherPage2"),
        automaticallyImplyLeading: false,
      ),

      body: TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("Go back"),
      ),
    );
  }
}
