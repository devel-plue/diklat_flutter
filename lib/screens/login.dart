import 'package:flutter/material.dart';
import 'package:login/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String textLogin = '';
  TextEditingController namaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              backgroundImage: NetworkImage(
                "https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg",
              ),
            ),
          ),
          const Divider(),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                  controller: namaController,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  controller: passwordController,
                  style: const TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () => doLogin(context),
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: const Text('Register'),
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => {},
                child: const Text('Forgot password'),
              ),
            ],
          ),
          Text(textLogin)
        ],
      ),
    );
  }

  @override
  void dispose() {
    namaController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    namaController.addListener(printNama);
    passwordController.addListener(printPassword);
  }

  void printNama() {
    print('namafield: ${namaController.text}');
  }

  void printPassword() {
    //print('namafield: ${passwordController.text}');
  }

  void pencetLogin() {
    textLogin = 'Tes data';
    // ignore: avoid_print
    print([namaController.text, passwordController.text]);
  }

  void doLogin(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
