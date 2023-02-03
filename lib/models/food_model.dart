class FoodModel {
  final int id;
  final String name;
  final double price;
  final String seller;
  final String location;
  final String rating;
  final String time;
  final String desc;
  final String imageUrl;

  const FoodModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.seller,
      required this.location,
      required this.rating,
      required this.time,
      required this.desc,
      required this.imageUrl});
}
