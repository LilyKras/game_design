class StoryItem {
  final String name;
  final List<String> genres;
  final Uri imageUrl;
  final List<String> stats;
  final String description;
  final String? uid;
  final int season;
  final int series;
  final int progress;

  const StoryItem({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.stats,
    required this.genres,
    required this.season,
    required this.series,
    required this.progress,
    this.uid,
  });
}
