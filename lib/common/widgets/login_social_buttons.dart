import 'package:delivery/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class DSocialButtons extends StatelessWidget {
  const DSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(

              border: Border.all(color: DColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                "assets/logos/google.webp",
              ),
              width: DSizes.iconMd,
              height: DSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(
          width: DSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(

              border: Border.all(color: DColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                "assets/logos/facebook.png",
              ),
              width: DSizes.iconMd,
              height: DSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
