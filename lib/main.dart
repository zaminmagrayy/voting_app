import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voting_app/view/screens/home_screen.dart';
import 'package:voting_app/view/screens/login_screen.dart';
import 'package:voting_app/view/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDcD2-8o6NxuVf_y4b0nyITrhUvH6DOE5U",
      appId: "1:1079657482980:android:87309883b170e107a67af1",
      messagingSenderId: "1079657482980-us0strhleopeliturbr2isq39eamkvgu.apps.googleusercontent.com",
      projectId: "voting-app-8b090",
    ),
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      getPages: [
        GetPage(name: '/splash_screen', page: () => const SplashScreen()),
        GetPage(name: '/login_screen', page: () => const LoginScreen()),
        GetPage(name: '/', page: () => const HomeScreen()),
      ],
    ),
  );
}
