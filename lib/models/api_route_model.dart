class Situation {
  final String port;
  final String name;
  String auth = "";

  Situation({
    required this.port,
    required this.name,
  });
}

List<Situation> Situations = [
  Situation(
    name: '選餐廳',
    port: '5001',
  ),
  Situation(
    name: '餐廳訂位',
    port: '5004',
  ),
  Situation(
    name: '餐廳帶位',
    port: '5007',
  ),
  Situation(
    name: '點食物和飲料',
    port: '5010',
  ),
  Situation(
    name: '點開胃菜',
    port: '5013',
  ),
  Situation(
    name: '點主菜',
    port: '5016',
  ),
  Situation(
    name: '點酒',
    port: '5019',
  ),
  Situation(
    name: '點點心',
    port: '5022',
  ),
  Situation(
    name: '給好評',
    port: '5025',
  ),
  Situation(
    name: '給負評',
    port: '5028',
  ),
];
