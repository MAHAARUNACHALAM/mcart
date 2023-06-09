import 'package:flutter/material.dart';
import 'package:mcart/CartModal.dart';
import 'package:mcart/CartPage.dart';
import 'package:mcart/HomePage.dart';
import 'package:mcart/Login.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'CartPage1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/home': (context) => HomeScreen(),
          '/': (context) => LoginScreen(),
          '/cart': (context) => CartScreen(),
        },
      ),
    );
  }
}
