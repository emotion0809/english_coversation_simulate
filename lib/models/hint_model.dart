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
List<Hint> choose_a_good_reastaurant = [
  Hint(
      rasaMessage:
      "Devi, have you thought about where would you like to go to dinner on Friday for your birthday?",
      rasaMessage2: "Devi, do you have any preference for where you would like to go for dinner for your birthday?",
      rasaMessage3: "Devi, do you have a favorite place that you would like to go to for your birthday dinner?",
      chinseHint: "我不知道要去哪,選擇餐廳讓我很困擾",
      englishHint:
      "I don't really know where I want to go. I am having trouble thinking of a particular restaurant."),
  Hint(
      rasaMessage:
      "You know, we could look online at the local Internet sites.",
      rasaMessage2: "There is a great restaurant directory here in the weekend section of the newspaper.",
      rasaMessage3: "I've got a great guidebook here of local restaurants.",
      chinseHint: "很棒,我們去看看吧",
      englishHint:
      "Good. Let's take a look!"),
  Hint(
      rasaMessage:
      "What kind of food would you like for your birthday?",
      rasaMessage2: "Do you have a particular type of food that you would like?",
      rasaMessage3: "What is your favorite type of restaurant food?",
      chinseHint: "日式和泰式我都很喜歡",
      englishHint:
      "I really like Japanese or Thai food."),
  Hint(
      rasaMessage:
      "This one, Shogun, looks good.",
      rasaMessage2: "That Japanese restaurant, Shogun, got good reviews.",
      rasaMessage3: "Shogun looks pretty good!",
      chinseHint: "喔!我記得我去年有去過.我很享受在那邊用餐",
      englishHint:
      "Oh, I remember that restaurant. I went there years ago. I really enjoyed it!"),
  Hint(
      rasaMessage:
      "Would you like to go there then?",
      rasaMessage2: "Would that be a place that you might like to go to for your birthday?",
      rasaMessage3: "Would that be a good choice for your birthday dinner then?",
      chinseHint: "這是很好的選擇,我們現在就打電話預約",
      englishHint:
      "I think that that would be a really good choice! Let's call and make a reservation."),
  ];

List<Hint> making_a_reservation = [
  Hint(
      rasaMessage:
      "Shogun Restaurant.",
      rasaMessage2: "This is Shogun Restaurant.",
      rasaMessage3: "Shogun Restaurant of Pasadena.",
      chinseHint: "你好,我想預定晚餐時段",
      englishHint:
      "Hello, I need to make a dinner reservation."),
  Hint(
      rasaMessage:
      "Of course, what evening will you be joining us on?",
      rasaMessage2: "Can you tell me what night you will be coming?",
      rasaMessage3: "I can help you if you can just tell me what evening you like the reservation for.",
      chinseHint: "我們會在星期二晚上到你們的餐廳",
      englishHint:
      "We will be coming to your restaurant on Tuesday night."),
  Hint(
      rasaMessage:
      "What time would you like the reservation for?",
      rasaMessage2: "What time will you be dining with us?",
      rasaMessage3: "What time do you think that you would like to have dinner?",
      chinseHint: "七點最好,七點半也可以",
      englishHint:
      "7:00 would be best, or maybe 7:30."),
  Hint(
      rasaMessage:
      "How many people will you need the reservation for?",
      rasaMessage2: "How many guests will be in your party?",
      rasaMessage3: "How many diners will be in your group?",
      chinseHint: "我們要預訂四個空位",
      englishHint:
      "We need a reservation for four."),
  Hint(
      rasaMessage:
      "Fine, I can seat you at 7:00 on Tuesday, if you would kindly give me your name.",
      rasaMessage2: "Please just give me your name, and at 7:00 on Tuesday we will have a table for you!",
      rasaMessage3: "I have a table for four available at 7:00, if you would just give me your name.",
      chinseHint: "謝謝,我的姓氏是福斯特",
      englishHint:
      "Thank you. The last name is Foster."),
  Hint(
      rasaMessage:
      "See you at 7:00 this Tuesday, Mr. Foster.",
      rasaMessage2: "Thank you, Mr. Foster, see you this Tuesday at 7:00.",
      rasaMessage3: "Mr. Foster, we will be expecting you this Tuesday at 7:00.",
      chinseHint: "我非常期待在你餐廳用餐,謝謝你的幫忙",
      englishHint:
      "I look forward to having dinner at your restaurant. Thank you for your help."),
];

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
