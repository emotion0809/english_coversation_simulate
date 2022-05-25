class Hint {
  final String rasaMessage;
  final String rasaMessage2;
  final String rasaMessage3;
  final String chinseHint;
  final String englishHint;

  Hint({
    required this.rasaMessage,
    required this.rasaMessage2,
    required this.rasaMessage3,
    required this.chinseHint,
    required this.englishHint,
  });
}

List<List<Hint>> situationHintList = [
  choose_a_good_reastaurant,
  making_a_reservation,
  being_seated_at_the_restaurant,
  ording_food_and_drinks,
  ording_appetizers,
  ording_main_entree,
  ording_drinks,
  ording_desserts,
  making_postive_Comments_on_food,
  making_negative_Comments_on_food
];
List<Hint> choose_a_good_reastaurant = [];

List<Hint> making_a_reservation = [];

List<Hint> being_seated_at_the_restaurant = [];

List<Hint> ording_food_and_drinks = [];

List<Hint> ording_appetizers = [];

List<Hint> ording_main_entree = [];

List<Hint> ording_drinks = [
  Hint(
      rasaMessage:
          "While you are thinking about what you might like to order for dinner, would you like to order your drinks?",
      rasaMessage2: "空",
      rasaMessage3: "空",
      chinseHint: "我不太確定要點什麼，你店裡有什麼特別的嗎?",
      englishHint:
          "I am not sure what I want. Do you have any house specials?"),
  Hint(
    rasaMessage: "Actually, we are famous for our",
    rasaMessage2: "空",
    rasaMessage3: "空",
    chinseHint: "聽起來不錯，可以給我一杯嗎?",
    englishHint:
        "That sounds like a good choice for me. May I have one, please?",
  ),
  Hint(
    rasaMessage: "Would you like that drink blended or on the rocks?",
    rasaMessage2: "空",
    rasaMessage3: "空",
    chinseHint: "我喜歡不加冰塊",
    englishHint: "I would like it blended.",
  ),
  Hint(
    rasaMessage: "Would you like that drink blended or on the rocks?",
    rasaMessage2: "空",
    rasaMessage3: "空",
    chinseHint: "請幫我加冰塊",
    englishHint: "Please bring it to me on the rocks.",
  ),
  Hint(
    rasaMessage: "Would you like it with salt or no salt?",
    rasaMessage2: "空",
    rasaMessage3: "空",
    chinseHint: "我喜歡加鹽的,謝謝",
    englishHint: "I would like it with salt, please.",
  ),
  Hint(
    rasaMessage: "Would you like it with salt or no salt?",
    rasaMessage2: "空",
    rasaMessage3: "空",
    chinseHint: "不用加鹽,謝謝",
    englishHint: "No salt, please.",
  ),
  Hint(
      rasaMessage:
          "While you are thinking about what you might like to order for dinner, would you like to order your drinks?",
      rasaMessage2: "空",
      rasaMessage3: "空",
      chinseHint: "你們有酒的清單嗎?",
      englishHint: "do you have a wine list?"),
  Hint(
      rasaMessage:
          "While you are thinking about what you might like to order for dinner, would you like to order your drinks?",
      rasaMessage2: "空",
      rasaMessage3: "空",
      chinseHint: "你們這家餐廳有瑪格麗塔嗎?",
      englishHint: "Do you have margarita in this restaurant?"),
  Hint(
      rasaMessage: "We have",
      rasaMessage2: "空",
      rasaMessage3: "空",
      chinseHint: "要，請給我一杯",
      englishHint: "Yes, please give me one."),
  Hint(
      rasaMessage: "We have",
      rasaMessage2: "空",
      rasaMessage3: "空",
      chinseHint: "不用,我想要其他飲料",
      englishHint: "No, I want other drinks."),
];

List<Hint> ording_desserts = [];

List<Hint> making_postive_Comments_on_food = [];

List<Hint> making_negative_Comments_on_food = [];
