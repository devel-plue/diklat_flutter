import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String judul = 'Form Login';
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              judul,
              style: const TextStyle(fontFamily: 'Mohave'),
            ),
          ),
          body: const Center(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: LoginScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
