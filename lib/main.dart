import 'package:africa_qr_redirect/Router/router.dart';
import 'package:africa_qr_redirect/screen/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  // setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //   ClampingScrollWrapper.builder(context, widget!),
      //   breakpoints: const [
      //     ResponsiveBreakpoint.resize(350, name: MOBILE),
      //     ResponsiveBreakpoint.autoScale(600, name: TABLET),
      //     ResponsiveBreakpoint.resize(800, name: DESKTOP),
      //     ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
      //   ],
      // ),
      debugShowCheckedModeBanner: false,
      title: 'AfricaQR',
      theme: ThemeData(
        primaryColor: const Color(0XFFF79526),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.grey,
        ),
      ),
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // routerDelegate: AppRouter().router.routerDelegate,
      home: LandingPageScreen(),
    );
  }
}
