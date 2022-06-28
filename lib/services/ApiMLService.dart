import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pt_mercadolibre_mob/constants.dart';
import 'package:pt_mercadolibre_mob/models/Product.dart';

// Fetch our Products from API
Future<List<Product>> fetchProducts() async {
final response = await http.get(KapiUrl);
  const String apiUrl =KapiUrl;
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    // Return list of products
    return products;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}
