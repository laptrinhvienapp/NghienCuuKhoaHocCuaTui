import 'package:flutter/material.dart';
import 'package:project/screens/login.dart';
import 'package:project/services/firebase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.setupFirebase();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primaryColor: primaryColor,
        shadowColor: secondaryColor,
      ),
      home: const Login(),
    );
  }
}