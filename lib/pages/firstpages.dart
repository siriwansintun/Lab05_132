import 'package:flutter/material.dart';
import 'package:lab05_132/pages/utils/food.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List<Food> foods = [];
  String groupfood = "ยังไม่ได้เลือกรายการอาหาร!!";

  @override
  void initState() {
    super.initState();
    foods = Food.getFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siriwan"),
        backgroundColor: const Color.fromARGB(255, 255, 152, 222),
      ),
      body: Column(
        children: [
          const Text("เมนูอาหาร"),
          Column(
            children: createRadioFood(),
          ),
          Text(groupfood)
        ],
      ),
    );
  }

  List<Widget> createRadioFood() {
    List<Widget> myfoods = [];
    for (Food food in foods) {
      myfoods.add(
        RadioListTile(
          title: Text(food.thaiName),
          subtitle: Text(food.engName),
          value: food.value,
          groupValue: groupfood,
          onChanged: (value) {
            setState(() {
              groupfood = value!;
            });
          },
          selected: true,
        ),
      );
    }
    return myfoods;
  }
}
