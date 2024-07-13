class Place {
  final String? name;
  final String? description;
  final String? imageUrl;
  final String? weblink;

  Place({
    required this.name,
    required this.description,
    required this.imageUrl,
    this.weblink,
  });

  Place.withNoImageUrl({
    this.name,
    this.description,
    this.weblink,
  }) : imageUrl = null;

  Place copyWith(
      {String? name, String? description, String? imageUrl, String? weblink}) {
    return Place(
        name: name ?? this.name,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        weblink: weblink ?? this.weblink);
  }

  @override
  String toString() {
    return "Place{name: $name, description: $description, imageUrl: $imageUrl}";
  }
}
