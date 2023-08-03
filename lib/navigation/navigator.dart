import 'package:diella/presentation/menu/screens/main_screen/main_screen.dart';
import 'package:diella/presentation/menu/screens/settings_screen/settings_screen.dart';
import 'package:diella/presentation/menu/screens/shop_screens/shop_screen/grid_view_screen.dart';
import 'package:diella/presentation/menu/screens/shop_screens/type_shop_screen/type_shop_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/shop',
      builder: (context, state) => const ShopScreen(),
    ),
    GoRoute(
      path: '/shop/coins',
      builder: (context, state) => const TypeShopScreen(type: 'coins'),
    ),
    GoRoute(
      path: '/shop/keys',
      builder: (context, state) => const TypeShopScreen(type: 'keys'),
    ),
    GoRoute(
      path: '/shop/combo',
      builder: (context, state) => const TypeShopScreen(type: 'combo'),
    ),
  ],
);
