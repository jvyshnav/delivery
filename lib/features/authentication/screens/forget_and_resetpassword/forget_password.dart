import 'package:delivery/features/authentication/screens/forget_and_resetpassword/resetpasswordscreen.dart';
import 'package:delivery/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(
              "Forget Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),const SizedBox(height: DSizes.spaceBtwItems,),
            Text(
              "A password reset notification is an email that a website sends to a user who has forgotten their password.",
              style: Theme.of(context).textTheme.labelMedium,
            ),const SizedBox(height: DSizes.spaceBtwSections *2 ,),

            ///textfield
            TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.mail,),labelText: "E-mail"),),
const SizedBox(height: DSizes.spaceBtwSections,),

            ///button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const ResetPasswordScreen()),
                  child: const Text("Submit")),
            )
          ],
        ),
      ),
    );
  }
}
