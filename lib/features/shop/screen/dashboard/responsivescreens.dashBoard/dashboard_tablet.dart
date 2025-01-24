import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/dashboard/widgets/order_status_graph.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/dashboard/widgets/weekly_sales.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../tables/data_table.dart';
import '../widgets/dashboard_card.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

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
                        title: 'Total Orders', subtitle: '36', status: 44),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: DashBoardCard(
                        title: 'Visitors', subtitle: '25, 035', status: 2),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // bar graph
              const WeeklySalesGraph(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Sales
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

              // Pie Chart
              const OrderstatusPieChart(),
            ],
          ),
        ),
      ),
    );
  }
}

//  SizedBox(
//                   width: TSizes.spaceBtwItems,
//                 ),

//                 // BAr graph

//                 // const SizedBox(child: WeeklySalesGraph()),

//                 SizedBox(
//                   height: TSizes.spaceBtwSections,
//                 ),

//                 // orders

//                 TRoundedContainer(),
//                 SizedBox(
//                   height: TSizes.spaceBtwSections,
//                 ),

//                 // Pie Chart
//                 //  OrderstatusPieChart()

// Row(
//                   children: const [
//                     DashBoardCard(
//                         title: 'Total Orders', subtitle: '36', status: 44),
//                     SizedBox(
//                       width: TSizes.spaceBtwItems,
//                     ),
//                     DashBoardCard(
//                         title: 'Visitors', subtitle: '25, 035', status: 2),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: TSizes.spaceBtwSections,
//                 ),
