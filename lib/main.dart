import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainApp(),
    );
  }
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C0F0D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C0F0D),
        leading: SvgPicture.asset(
          "assets/icons/backarrow.svg",
          width: 21,
          height: 14,
          fit: BoxFit.none,
        ),
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(
            color: Color(0xFFFD5D69),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none,
          ),
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              width: 28,
              height: 28,
              color: Color(0xFFFFC6C9),
              child: SvgPicture.asset(
                "assets/icons/notification.svg",
                width: 12,
                height: 17,
                fit: BoxFit.none,
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              width: 28,
              height: 28,
              color: Color(0xFFFFC6C9),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                width: 12,
                height: 17,
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const MainCategoryItem(title: "Seafood", image: "assets/seafood.png"),
          SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(title: "Lunch", image: "assets/lunch.png"),
              CategoryItem(title: "Breakfast", image: "assets/breakfast.png"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(title: "Dinner", image: "assets/dinner.png"),
              CategoryItem(title: "Vegan", image: "assets/vegan.png"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(title: "Desert", image: "assets/dessert.png"),
              CategoryItem(title: "Drinks", image: "assets/drinks.png"),
            ],
          ),
          Container(
            width: 280,
            height: 56,
            decoration: BoxDecoration(
              color: Color(0xffFD5D69),
              borderRadius: BorderRadius.circular(33),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: SvgPicture.asset("assets/icons/home.svg"), onPressed: () => context.go,),
                SvgPicture.asset("assets/icons/massages.svg"),
                SvgPicture.asset("assets/icons/categories.svg"),
                SvgPicture.asset("assets/icons/profile.svg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.title, required this.image});

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image(
            image: AssetImage(image),
            width: 356,
            height: 148,
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image(
            image: AssetImage(image),
            width: 159,
            height: 145,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        )
      ],
    );
  }
}