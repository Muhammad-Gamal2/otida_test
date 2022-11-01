class Category {
  final String name;
  final String icon;
  final int color;

  Category({required this.name, required this.icon, required this.color});

  static List<Category> samples = [
    Category(
      name: 'Sports',
      icon: 'assets/images/sport.svg',
      color: 0xFFF0635A,
    ),
    Category(
      name: 'Music',
      icon: 'assets/images/music.svg',
      color: 0xFFF59762,
    ),
    Category(
      name: 'Food',
      icon: 'assets/images/food.svg',
      color: 0xFF29D697,
    ),
    Category(
      name: 'Art',
      icon: 'assets/images/art.svg',
      color: 0xFF46CDFB,
    )
  ];
}
