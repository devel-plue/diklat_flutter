import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void doLogout(context) {
    Navigator.pop(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  void goToProfilePage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Home Screen',
              style: TextStyle(fontFamily: 'Mohave'),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () => goToProfilePage(context),
                  icon: const Icon(
                    Icons.person,
                  ),
                ),
                IconButton(
                  onPressed: () => doLogout(context),
                  icon: const Icon(
                    Icons.exit_to_app,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Isi laman Home'),
        ),
      ),
    );
  }
}
