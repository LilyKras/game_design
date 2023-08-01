class NavigationState {
  final bool? _settings;
  final bool? _shop;
  final bool? _reward;
  String? selectedShopType;
  bool get isSettings => _settings == true;
  bool get isShop => _shop == true;
  bool get isReward => _reward != null;
  bool get isTypeShop => selectedShopType != null;
  bool get isRoot => !isSettings && !isShop && !isReward && !isTypeShop;

  NavigationState.root()
      : _settings = false,
        _shop = false,
        _reward = false,
        selectedShopType = null;
  NavigationState.shop()
      : _settings = false,
        _shop = true,
        _reward = false,
        selectedShopType = null;
  NavigationState.reward()
      : _settings = false,
        _shop = false,
        _reward = true,
        selectedShopType = null;
  NavigationState.settings()
      : _settings = true,
        _shop = false,
        _reward = false,
        selectedShopType = null;
  NavigationState.typeShop(this.selectedShopType)
      : _settings = false,
        _shop = false,
        _reward = false;
  NavigationState.unknown()
      : _settings = false,
        _shop = true,
        _reward = false,
        selectedShopType = null;
}
