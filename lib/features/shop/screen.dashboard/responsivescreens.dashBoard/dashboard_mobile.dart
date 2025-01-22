import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/screen.dashboard/widgets/order_status_graph.dart';
import 'package:ecommerce_admin_panel/features/shop/screen.dashboard/widgets/weekly_sales.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../tables/data_table.dart';
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
              const DashBoardCard(
                  title: 'Total Orders', subtitle: '36', status: 44),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const DashBoardCard(
                  title: 'Visitors', subtitle: '25, 035', status: 2),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Bar graph
              const WeeklySalesGraph(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // orders
              TRoundedContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Orders',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    const DashBoardOrderTable()
                  ],
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Piechart

              const OrderstatusPieChart()
            ],
          ),
        ),
      ),
    );
  }
}
