import 'package:emedical/views/home_medical.dart';
import 'package:emedical/views/home.dart';
import 'package:emedical/auth/sign_up.dart';
import 'package:emedical/auth/login.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
      routes: {
        Login.routeName: (_) => const Login(),
        SignUp.routeName: (_) => const SignUp(),
        Home.routeName: (_) => const Home(),
        HomeMedical.routeName: (_) => const HomeMedical(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(Login.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Text(
                  "E-medical",
                  style: TextStyle(
                    fontFamily: montserratFamily,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
