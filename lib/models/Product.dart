class Product {
  final String id;
  final String title;
  final String price;
  final int available_quantity;
  final String thumbnail;
 
 
  Product(
    this.id,
    this.title,
    this.price,
    this.available_quantity,
    this.thumbnail
  );
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(json['id'], json['title'], json['price'], json['available_quantity'], json['thumbnail']);
  }
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(json['id'], json['title'], json['price'], json['available_quantity'], json['thumbnail']);
  }
}