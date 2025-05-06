import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ui_final/pages/animation_page.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/news_page.dart';
import 'pages/post_page.dart';
import 'pages/profile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/news': (context) => const NewsPage(),
        '/post': (context) => const PostPage(),
        '/profile': (context) => const ProfilePage(),
        '/animation': (context) => const AnimationPage(),
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
