import 'package:diella/navigation/navigation_state.dart';
import 'package:diella/presentation/screens/main_screen/main_screen.dart';
import 'package:diella/presentation/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

class MyRouterDelegate extends RouterDelegate<NavigationState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<NavigationState> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;
  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  NavigationState? state;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(
          child: MainScreen(),
        ),
        if (state?.isSettings == true)
          const MaterialPage(
            child: SettingsScreen(),
          ),
        /////и тд
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        state = NavigationState.root();
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(NavigationState configuration) async {
    state = configuration;
    notifyListeners();
  }

  void showSettings() {
    state = NavigationState.settings();
    notifyListeners();
  }

  void showShop() {
    state = NavigationState.shop();
    notifyListeners();
  }

  void showRewards() {
    state = NavigationState.reward();
    notifyListeners();
  }

  void showTypeShop(String selectedShopType) {
    state = NavigationState.typeShop(selectedShopType);
    notifyListeners();
  }
}

final routerDelegate = MyRouterDelegate();
