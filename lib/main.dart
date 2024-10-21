import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/service_locator.dart';
import 'package:supermarket/features/home/data/repo/home_repo_impl.dart';
import 'package:supermarket/features/home/presentation/manager/bestseller_prducts/bestseller_products_cubit.dart';

void main() async {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [
      BlocProvider<BestsellerProductsCubit>(
          create: (context) => BestsellerProductsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchBestsellerProducts()
        ),
     ],
      child: MaterialApp.router(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: kPrimaryColor,
            focusColor: kPrimaryColor,
            primarySwatch: const MaterialColor(0xFF53B175, <int, Color>{
              50: Color(0xFFE8F5E9),
              100: Color(0xFFC8E6C9),
              200: Color(0xFFA5D6A7),
              300: Color(0xFF81C784),
              400: Color(0xFF66BB6A),
              500: Color(0xFF4CAF50),
              600: Color(0xFF43A047),
              700: Color(0xFF388E3C),
              800: Color(0xFF2E7D32),
              900: Color(0xFF1B5E20),
            }),
            textTheme: GoogleFonts.interTextTheme(),
            useMaterial3: false),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
