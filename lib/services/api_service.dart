import 'package:dio/dio.dart';
import '../models/recipe_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _apiKey = 'd252210fd9334afd9aa8daddc02e54df';

  Future<List<RecipeModel>> fetchRecipes() async {
    final response = await _dio.get(
      'https://api.spoonacular.com/recipes/complexSearch',
      queryParameters: {'apiKey': _apiKey},
    );

    // Decode JSON menjadi List<RecipeModel>
    return (response.data['results'] as List)
        .map((json) => RecipeModel.fromJson(json))
        .toList();
  }
}
