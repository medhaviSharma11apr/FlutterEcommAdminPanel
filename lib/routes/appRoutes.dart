// ignore: file_names
import 'package:ecommerce_admin_panel/app.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/login.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/resetpassword/resetpassword.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/create_brand/create_brand.dart';
import 'package:ecommerce_admin_panel/routes/routemiddleware.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:get/route_manager.dart';
import '../features/media/screens.media/media.dart';
import '../features/shop/screen/banner/all_banners/banners.dart';
import '../features/shop/screen/banner/create_banner/createBanners.dart';
import '../features/shop/screen/banner/edit_banner/editBanner.dart';
import '../features/shop/screen/brand/all_brand/brands.dart';
import '../features/shop/screen/brand/edit_brand/edit_brand.dart';
import '../features/shop/screen/category/all_category/widgets/categories.dart';
import '../features/shop/screen/category/create_category/create_categories.dart';
import '../features/shop/screen/category/edit_category/edit_categories.dart';
import '../features/shop/screen/dashboard/dashboard.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
        name: Routes.responsiveDesignScreen,
        page: () => const ResponsiveDesignScreen(),
        middlewares: [RouteMiddleWare()]),
    GetPage(
        name: Routes.firstscreen,
        page: () => const FirstScreen(),
        middlewares: [RouteMiddleWare()]),
    GetPage(
      name: Routes.secondscreen,
      page: () => const SecondScreen(),
      middlewares: [RouteMiddleWare()],
    ),
    GetPage(name: Routes.secondscreenWithUid, page: () => const SecondScreen()),
    GetPage(name: Routes.login, page: (() => const LoginScreen())),
    GetPage(
        name: Routes.forgetPassword,
        page: (() => const ForgetPasswordScreen())),
    GetPage(
        name: Routes.resetPassword, page: (() => const ResetPasswordScreen())),
    GetPage(
        name: Routes.dashboard,
        page: (() => const DashBoardScreen()),
        middlewares: [RouteMiddleWare()]),
    GetPage(
        name: Routes.media,
        page: (() => const MediaScreen()),
        middlewares: [RouteMiddleWare()]),

    // Categories
    GetPage(
        name: Routes.categories,
        page: (() => const CategoriesScreen()),
        middlewares: [RouteMiddleWare()]),
    GetPage(
        name: Routes.createCategory,
        page: (() => const CreateCategoryScreen()),
        middlewares: [RouteMiddleWare()]),
    GetPage(
        name: Routes.editCategory,
        page: (() => const EditCategoryScreen()),
        middlewares: [RouteMiddleWare()]),
    // Brands

    GetPage(
        name: Routes.brands,
        page: (() => const BrandsScreens()),
        middlewares: [
          RouteMiddleWare(),
        ]),
    GetPage(
        name: Routes.editBrand,
        page: (() => const EditBrand()),
        middlewares: [
          RouteMiddleWare(),
        ]),
    GetPage(
        name: Routes.createBrand,
        page: (() => const CreateBrand()),
        middlewares: [
          RouteMiddleWare(),
        ]),

    // / Banners
    GetPage(
        name: Routes.banner,
        page: (() => const BannersScreen()),
        middlewares: [
          RouteMiddleWare(),
        ]),
    GetPage(
        name: Routes.editBanner,
        page: (() => const EditBannersScreen()),
        middlewares: [
          RouteMiddleWare(),
        ]),
    GetPage(
        name: Routes.createBanner,
        page: (() => const CreateBannersScreen()),
        middlewares: [
          RouteMiddleWare(),
        ]),
  ];
}
