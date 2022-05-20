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
    name: '點酒',
    port: '5001',
  ),
  Situation(
    name: '點甜點',
    port: '5003',
  ),
  Situation(
    name: '餐廳帶位',
    port: '5005',
  ),
  Situation(
    name: '選擇餐廳',
    port: '5007',
  ),
  Situation(
    name: '預約',
    port: '5009',
  ),
  Situation(
    name: '點主菜',
    port: '5011',
  ),
  Situation(
    name: '點食物與飲料',
    port: '5013',
  ),
  Situation(
    name: '點開胃菜',
    port: '5015',
  ),
  Situation(
    name: '給好評',
    port: '5017',
  ),
  Situation(
    name: '給負評',
    port: '5019',
  ),
];
