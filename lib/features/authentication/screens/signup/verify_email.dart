import 'package:delivery/common/widgets/success_screen.dart';
import 'package:delivery/features/authentication/screens/login/login.dart';
import 'package:delivery/utils/constants/sizes.dart';
import 'package:delivery/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            ///image
            Image(
              width: DHelperFunctions.screenWidth() * 0.6,
              image: const AssetImage(
                "assets/logos/emailsusccess.png",
              ),
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///title
            Text(
              "Verify Your Email Address.",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: DSizes.spaceBtwItems,
            ),

            ///subtitle
            Text(
              "thisisthetest@gmail.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: DSizes.spaceBtwItems,
            ),

            Text(
              "A verification message is a type of email sent to a user or a client after they have taken a certain action. This action could be creating an account, signing ...",
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: DSizes.spaceBtwSections,
            ),

            ///buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=>Get.to(()=>const SuccessScreen()), child: const Text("Continue")),
            ),
            const SizedBox(
              height: DSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () {}, child: const Text("Resend Email")))
          ],
        ),
      ),
    );
  }
}
