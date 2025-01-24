class Routes {
  static const firstscreen = '/';
  static const secondscreen = '/second-screen';
  static const secondscreenWithUid = '/second-screen/:userId';

  static const responsiveDesignScreen = '/responsiveDesignScreen';

  static List sideMenuItems = [firstscreen, secondscreen, secondscreenWithUid];

  static List sidebarMenuItems = [
    dashboard,
    media,
    categories,
  ];

  //

  static const login = '/login';
  static const forgetPassword = '/forgetPassword';
  static const resetPassword = '/resetPassword/';
  static const dashboard = '/dashboard';
  static const media = '/media';

  //

  static const banner = '/banner';
  static const createBanner = '/createBanner';
  static const editBanner = '/editBanner';

  //

  static const products = '/products';
  static const createProducts = '/createProducts';
  static const editProducts = '/editProducts';

  //

  static const categories = '/categories';
  static const createCategory = '/createCategory';
  static const editCategory = '/editCategory';

  //
  static const brands = '/brands';
  static const createBrand = '/createBrand';
  static const editBrand = '/editBrand';

  //

  static const customers = '/customers';
  static const createCustomer = '/createCustomer';
  static const editCustomer = '/editCustomer';
}
