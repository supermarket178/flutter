import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/app_router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
