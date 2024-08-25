import 'package:delivery/features/authentication/screens/login/login.dart';
import 'package:delivery/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: ()=>Get.offAll(()=>const LoginScreen()), icon: const Icon(Icons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [

            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///title
            Text(
              "Password Rest Email Sent",
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
                  child: const Text("Done")),
            ),   const SizedBox(
              height: DSizes.spaceBtwItems,
            ),  SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text("Resent Email")),
            )
          ],
        ),
      ),
    );
  }
}
