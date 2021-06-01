
class Product{
  final int id;
  final String name;

  Product({this.id, this.name});

  factory Product.fromJSON(Map<String, dynamic> json){
    return Product(
      id: json['id'],
      name: json['name']
    );
  }
}
