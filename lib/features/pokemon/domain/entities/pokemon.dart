class Pokemon {
  const Pokemon({
    required this.id,
    required this.name,
    required this.types,
    this.imageUrl,
  });

  final int id;
  final String name;
  final List<String> types;
  final String? imageUrl;
}