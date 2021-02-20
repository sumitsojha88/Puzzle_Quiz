
class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "Money-Puzzle", 'courses': 17, 'image': "assets/images/money2.png"},
  {"name": "Age-Puzzle", 'courses': 25, 'image': "assets/images/age-logo.png"},
  {
    "name": "Clock Puzzle",
    'courses': 13,
    'image': "assets/images/clock-logo.png"
  },
  {"name": "Speed and Distances Puzzle", 'courses': 17, 'image': "assets/images/speed_time.jpg"},
  {"name": "Weight Puzzle", 'courses': 17, 'image': "assets/images/weight-logo.jpg"},
  {"name": "Circle Puzzle", 'courses': 17, 'image': "assets/images/circle-logo.png"},
  {"name": "Paper Folding Puzzle", 'courses': 17, 'image': "assets/images/paper-logo.jpg"},
  {"name": "Liquid Pouring Puzzle", 'courses': 17, 'image': "assets/images/liquid-logo.png"},
  {"name": "Route and Network Puzzle", 'courses': 17, 'image': "assets/images/37route.jpg"},
];