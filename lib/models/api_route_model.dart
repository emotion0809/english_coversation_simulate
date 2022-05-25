class Situation {
  final int id;
  final String port;
  final String name;
  final String imageUrl;
  String auth = "";

  Situation({
    required this.id,
    required this.port,
    required this.name,
    required this.imageUrl,
  });
}

List<Situation> Situations = [
  Situation(
      id: 0,
      name: '選餐廳',
      port: '5001',
      imageUrl: 'assets/images/choose_a_good_restaurant.jpg'),
  Situation(
      id: 1,
      name: '餐廳訂位',
      port: '5004',
      imageUrl: 'assets/images/making_a_reservation.jpg'),
  Situation(
      id: 2,
      name: '餐廳帶位',
      port: '5007',
      imageUrl: 'assets/images/being_seated_at_the_restaurant.jpg'),
  Situation(
      id: 3,
      name: '點食物和飲料',
      port: '5010',
      imageUrl: 'assets/images/ordering_food_and_drinks.jpg'),
  Situation(
      id: 4,
      name: '點開胃菜',
      port: '5013',
      imageUrl: 'assets/images/ording_appetizers.jpg'),
  Situation(
      id: 5,
      name: '點主菜',
      port: '5016',
      imageUrl: 'assets/images/ording_main_entree.jpg'),
  Situation(
      id: 6,
      name: '點酒', port: '5019', imageUrl: 'assets/images/ording_drinks.jpg'),
  Situation(
      id: 7,
      name: '點點心', port: '5022', imageUrl: 'assets/images/ording_desserts.jpg'),
  Situation(
      id: 8,
      name: '給好評',
      port: '5025',
      imageUrl: 'assets/images/making_negative_comment_on_food.jpg'),
  Situation(
      id: 9,
      name: '給負評',
      port: '5028',
      imageUrl: 'assets/images/making_postive_comment_on_food.jpg'),
];
