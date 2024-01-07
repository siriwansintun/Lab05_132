class Food {
  String engName;
  String thaiName;
  String value;
  double price;

  Food({
    required this.engName,
    required this.thaiName,
    required this.value,
    required this.price,
  });
  static List<Food> getFood() {
    return <Food>[
      Food(
        engName: 'sandwich',
        thaiName: 'ขนมปังแซนด์วิช',
        value: 'sandwich',
        price: 30,
      ),
      Food(
        engName: 'hamburger',
        thaiName: 'แฮมเบอร์เกอร์',
        value: 'hamburger',
        price: 89,
      ),
      Food(
        engName: 'steak ',
        thaiName: ' เนื้อสเต็ก',
        value: 'steak ',
        price: 120,
      ),
      Food(
        engName: 'Salad ',
        thaiName: ' สลัดผัก',
        value: 'Salad ',
        price: 98,
      ),
      Food(
        engName: 'Barbecue ',
        thaiName: 'บาร์บีคิว',
        value: 'Barbecue ',
        price: 59,
      ),
    ];
  }
}
