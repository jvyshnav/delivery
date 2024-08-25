import 'package:delivery/common/widgets/login_social_buttons.dart';
import 'package:delivery/features/authentication/screens/signup/verify_email.dart';
import 'package:delivery/utils/constants/colors.dart';
import 'package:delivery/utils/constants/sizes.dart';

import 'package:delivery/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            ///title
            Text(
              "SignUp here",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),
            Form(
              child: Column(
                children: [
                  ///first name and last namme
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: "First Name"),
                      )),
                      const SizedBox(width: DSizes.spaceBtwItems),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "Last Name"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),

                  ///username
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person), labelText: "User Name"),
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),

                  ///email
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail), labelText: "E mail"),
                  ),

                  ///phone number
                  const SizedBox(height: DSizes.spaceBtwItems),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.call),
                        labelText: "Phone number"),
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),

                  ///password
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///terms and conditions and check box
            DTermsAndConditions(dark: dark),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///signup button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text("Create Account")),
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),
            Row(
              children: [
                Flexible(
                  child: Divider(
                    color: dark ? DColors.darkGrey : DColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  ),
                ),
                Text(
                  "Or Sign in With.".capitalize!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Flexible(
                  child: Divider(
                    color: dark ? DColors.darkGrey : DColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///social buttons
            const DSocialButtons(),
          ],
        ),
      ),
    );
  }
}

class DTermsAndConditions extends StatelessWidget {
  const DTermsAndConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: DSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "I agree to ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "Privacy Policy ",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Colors.white : DColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Colors.white : DColors.primary)),
          TextSpan(text: "and ", style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "Terms of Use",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Colors.white : DColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Colors.white : DColors.primary)),
        ])),
      ],
    );
  }
}
