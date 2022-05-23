class Situation {
  final String port;
  final String name;
  final String imageUrl;
  String auth = "";

  Situation({
    required this.port,
    required this.name,
    required this.imageUrl,
  });
}

List<Situation> Situations = [
  Situation(
      name: '選餐廳',
      port: '5001',
      imageUrl: 'assets/images/choose_a_good_restaurant.jpg'),
  Situation(
      name: '餐廳訂位',
      port: '5004',
      imageUrl: 'assets/images/making_a_reservation.jpg'),
  Situation(
      name: '餐廳帶位',
      port: '5007',
      imageUrl: 'assets/images/being_seated_at_the_restaurant.jpg'),
  Situation(
      name: '點食物和飲料',
      port: '5010',
      imageUrl: 'assets/images/ordering_food_and_drinks.jpg'),
  Situation(
      name: '點開胃菜',
      port: '5013',
      imageUrl: 'assets/images/ording_appetizers.jpg'),
  Situation(
      name: '點主菜',
      port: '5016',
      imageUrl: 'assets/images/ording_main_entree.jpg'),
  Situation(
      name: '點酒', port: '5019', imageUrl: 'assets/images/ording_drinks.jpg'),
  Situation(
      name: '點點心', port: '5022', imageUrl: 'assets/images/ording_desserts.jpg'),
  Situation(
      name: '給好評',
      port: '5025',
      imageUrl: 'assets/images/making_negative_comment_on_food.jpg'),
  Situation(
      name: '給負評',
      port: '5028',
      imageUrl: 'assets/images/making_postive_comment_on_food.jpg'),
];
