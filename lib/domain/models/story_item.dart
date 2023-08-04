class StoryItem {
  final String name;
  final List<String>? genres;
  final String imageUrl;
  final List<String>? stats;
  final String description;
  final String? uid;
  final int? season;
  final int? series;
  final int? progress;

  const StoryItem({
    required this.name,
    required this.imageUrl,
    required this.description,
    this.stats,
    this.genres,
    this.season,
    this.series,
    this.progress,
    this.uid,
  });
}
