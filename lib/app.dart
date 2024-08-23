import 'package:delivery/features/authentication/screens/onboarding/onboarding.dart';
import 'package:delivery/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
