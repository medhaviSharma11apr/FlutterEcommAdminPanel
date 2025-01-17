import 'package:ecommerce_admin_panel/common/widgets/customshapes/container/rounded_container.dart';
import 'package:ecommerce_admin_panel/routes/appRoutes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:ecommerce_admin_panel/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'common/responsive/responsive_design.dart';
import 'routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      getPages: AppRoutes.pages,
      initialRoute: Routes.responsiveDesignScreen,
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: (() => const Scaffold(
                body: Text('Nothing found'),
              ))),
    );
  }
}

class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: CustomLayoutBuilder(
            desktop: DeskTopWidget(),
            tablet: SizedBox(),
            mobile: SizedBox(),
          ),
        ),
      ),
    );
  }
}

class DeskTopWidget extends StatelessWidget {
  const DeskTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          // main Row 1
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    RoundedContainer(
                      height: 450,
                      // width: 200,
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: const Center(child: Text('Box 1')),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 450,
                child: Column(
                  children: [
                    Expanded(
                      child: RoundedContainer(
                        height: 250,
                        backgroundColor: Colors.blue.withOpacity(0.2),
                        child: const Center(child: Text('Box 2')),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundedContainer(
                              height: 250,
                              width: 200,
                              backgroundColor: Colors.blue.withOpacity(0.2),
                              child: const Center(child: Text('Box 3')),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: RoundedContainer(
                              height: 250,
                              width: 200,
                              backgroundColor: Colors.blue.withOpacity(0.2),
                              child: const Center(child: Text('Box 4')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          // main Row 2

          const SizedBox(
            height: 20,
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: RoundedContainer(
                    height: 250,
                    width: 200,
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    child: const Center(child: Text('Box 1')),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: RoundedContainer(
                    height: 250,
                    width: 200,
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    child: const Center(child: Text('Box 1')),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Simple Navigation: Default ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const SecondScreen();
                      },
                    ));
                  },
                  child: const Text('Default Navigation')),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SecondScreen());
                  },
                  child: const Text('GETX Navigation')),
            ),
            const Divider(),
            const Text(
              'Named Navigation: Default ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/second-screen');
                  },
                  child: const Text('Default Navigation')),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/second-screen");
                  },
                  child: const Text('GETX Navigation')),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Second Screen'));
  }
}




  // Expanded(
  //               child: RoundedContainer(
  //                 height: 450,
  //                 width: 200,
  //                 backgroundColor: Colors.blue.withOpacity(0.2),
  //                 child: const Center(child: Text('Box 1')),
  //               ),
  //             ),