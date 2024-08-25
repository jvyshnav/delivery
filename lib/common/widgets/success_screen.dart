import 'package:delivery/common/styles/spacing_styles.dart';
import 'package:delivery/features/authentication/screens/login/login.dart';
import 'package:delivery/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: DSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            Image(
              width: DHelperFunctions.screenWidth() * 0.6,
              image: const AssetImage(
                "assets/logos/successful.png",
              ),
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///title
            Text(
              "Your Account Successfully Created.",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: DSizes.spaceBtwItems,
            ),

            Text(
              " Include the reason for the success — confirm what action someone has taken or what task has been completed.",
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text("Continue")),
            )
          ],
        ),
      ),
    );
  }
}
