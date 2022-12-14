import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_apps/device_apps.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class LandingPageScreen extends StatefulWidget {
  const LandingPageScreen({super.key});

  @override
  State<LandingPageScreen> createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {
  @override
  void initState() {
    super.initState();
  }

// belc://onecash.mamapay.scom
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await LaunchApp.isAppInstalled(
                androidPackageName: 'com.belcash.onecash'))
              await LaunchApp.openApp(
                androidPackageName: 'com.belcash.onecash',
                openStore: false,
              );
            else {
              await launch('https://africaqr.giize.com/');
            }
          },
          child: Text('Go'),
        ),
      ),
    );
  }
}
