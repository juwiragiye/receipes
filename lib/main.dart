import 'package:flutter/material.dart';
import 'package:receipes/receipe_detail.dart';
import "receipe.dart";

void main() {
  runApp(ReceipeApp());
}

class ReceipeApp extends StatelessWidget {
  final ThemeData theme = ThemeData();

  ReceipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipes',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Receipe App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Receipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                child: buildReceipeCard(
                  Receipe.samples[index],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ReceipeDetail(
                      receipe: Receipe.samples[index],
                    );
                  }));
                });
          },
        ),
      ),
    );
  }

  Widget buildReceipeCard(Receipe receipe) {
    return Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(receipe.imageUrl),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                receipe.label,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Palatino',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ));
  }
}
