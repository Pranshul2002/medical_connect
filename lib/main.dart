import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_connect/authentication/login_page/login_page.dart';
import 'package:medical_connect/authentication/signup_page/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Future<bool> redirect() async {
    bool login = false;
    await Future.delayed(const Duration(seconds: 2), () {
      login = false;
    });
    return login;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: redirect(),
          builder: (BuildContext context, AsyncSnapshot<bool> login) {
            if (login.connectionState == ConnectionState.done) {
              if (login.data == true) {
                return const LoginPage();
              } else {
                return const SingUpPage();
              }
            } else {
              return Center(child: Lottie.asset("assets/lottie/loading.json"));
            }
          }),
    );
  }
}
