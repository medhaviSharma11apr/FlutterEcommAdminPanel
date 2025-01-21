import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../widgets/dashboard_card.dart';

class DashBoardMobile extends StatelessWidget {
  const DashBoardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text(
                'DashBoard',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // cards
              const DashBoardCard(
                status: 25,
                title: 'Sales total',
                subtitle: '\$345.0',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const DashBoardCard(
                status: 15,
                title: 'Average Order Value',
                subtitle: '\$45.0',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // cards
              const DashBoardCard(
                status: 25,
                title: 'Sales total',
                subtitle: '\$345.0',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const DashBoardCard(
                status: 15,
                title: 'Average Order Value',
                subtitle: '\$45.0',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
