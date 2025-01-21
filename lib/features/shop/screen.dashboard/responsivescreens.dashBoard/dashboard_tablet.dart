import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_card.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    
    
    
    Scaffold(
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
              Row(
                children: const [
                  Expanded(
                    child: DashBoardCard(
                      status: 25,
                      title: 'Sales total',
                      subtitle: '\$345.0',
                    ),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: DashBoardCard(
                      status: 15,
                      title: 'Average Order Value',
                      subtitle: '\$45.0',
                    ),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // cards
              Row(
                children: const [
                  Expanded(
                    child: DashBoardCard(
                      status: 25,
                      title: 'Sales total',
                      subtitle: '\$345.0',
                    ),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: DashBoardCard(
                      status: 15,
                      title: 'Average Order Value',
                      subtitle: '\$45.0',
                    ),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
 
 
 
  }
}
