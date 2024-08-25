import 'package:delivery/common/styles/spacing_styles.dart';
import 'package:delivery/features/authentication/screens/forget_and_resetpassword/forget_password.dart';
import 'package:delivery/features/authentication/screens/signup/signup.dart';
import 'package:delivery/utils/constants/colors.dart';
import 'package:delivery/utils/constants/sizes.dart';
import 'package:delivery/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: DSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            ///header
            const Image(
              height: 150,
              image:
                  AssetImage("assets/images/onboarding_images/onboard_two.png"),
            ),
            Text(
              "Welcome back,",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: DSizes.sm,
            ),
            Text(
              "let's make it easier",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            ///form
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: DSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                          ),
                          labelText: "email"),
                    ),
                    const SizedBox(
                      height: DSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          labelText: "password",
                          suffixIcon: Icon(Icons.remove_red_eye)),
                    ),
                    const SizedBox(
                      height: DSizes.spaceBtwInputFields / 2,
                    ),

                    ///forgot password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text("Remember me?"),
                          ],
                        ),
                        TextButton(
                            onPressed: ()=>Get.to(()=>const ForgetPasswordScreen()),
                            child: const Text("Forgot Password?"))
                      ],
                    ),
                    const SizedBox(
                      height: DSizes.spaceBtwSections,
                    ),

                    ///sign in
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Sign In")),
                    ),
                    const SizedBox(
                      height: DSizes.spaceBtwItems,
                    ),

                    ///create account
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignupScreen()),
                          child: const Text("Create Account")),
                    ),
                  ],
                ),
              ),
            ),

            ///divider
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

            ///Footer or social icons
            const DSocialButtons(),
          ],
        ),
      ),
    );
  }
}
