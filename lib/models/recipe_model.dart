class RecipeModel {
  final String title;
  final String image;

  RecipeModel({required this.title, required this.image});

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      title: json['title'],
      image: json['image'],
    );
  }
}