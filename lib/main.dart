import 'package:flutter/material.dart';
import 'package:kuza_revamped/Screens/registration/registration_details.dart';
import 'package:kuza_revamped/network/controllers/app_cache.dart';
import 'package:kuza_revamped/network/controllers/authentification/index.dart';
import 'package:provider/provider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();
  runApp(
    MultiProvider(
    providers:[
    ChangeNotifierProvider(
      create: (_) => AuthenticationManager(),
    ),
  ],

  child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
        )
      ),
      home: RegistrationDetails(),
    );
  }
}
