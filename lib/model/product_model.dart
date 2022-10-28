class ProductModel {
  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  ProductModel( //phương thức khởi tạo
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});
  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      category: json['category']
    );
  }
}
