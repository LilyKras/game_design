class ShopItem {
  final String name;
  final String imageAsset;
  final double price;
  final String description;
  final String? uid;

  const ShopItem({
    required this.name,
    required this.imageAsset,
    required this.description,
    required this.price,
    this.uid,
  });
}
