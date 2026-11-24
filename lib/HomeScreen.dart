import 'package:flutter/material.dart';

import 'category.dart';
import 'ShopCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading:false ,
        centerTitle: true,
        title: const Text(
          'الرئيسية',
          style: TextStyle(
            fontWeight: FontWeight(600),
            color: Color(0xFFC9A545),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'ابحث...',
                hintStyle: TextStyle(color: Colors.grey),
                filled: false,
                fillColor: Color(0xFF1E1E1E),
                // تصميم الحدود لحقل البريد الإلكتروني
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  // لون الحدود
                  borderSide: BorderSide(color: Color(0xFFC9A545)),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(icon: Icons.sailing, name: 'المكلا'),
              CategoryItem(icon: Icons.domain, name: ' سيئون '),
              CategoryItem(icon: Icons.auto_stories, name: 'تريم'),
              CategoryItem(icon: Icons.fort, name: 'الشحر'),
              // CategoryItem(icon: Icons.fort, name: 'الشحر'),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('بطاقات الحجز', style: TextStyle(fontSize: 22)),
          ),
          ShopCard(
            name: ' صالون ابو وليد ',
            city: 'تريم ',
            rating: '38 تقييم',
            image: 'assets/images/shop1.jpg',
          ),
          ShopCard(
            name: 'صالون ابو خليفة',
            city: 'تريم',
            rating: '36 تقييم',
            image: 'assets/images/shop2.jpg',
          ),
          ShopCard(
            name: 'صالون العندليب ',
            city: 'الشحر ',
            rating: '64 تقييم',
            image: 'assets/images/shop2.jpg',
          ),
          ShopCard(
            name: 'صالون العندليب ',
            city: 'الشحر ',
            rating: '64 تقييم',
            image: 'assets/images/shop2.jpg',
          ),
        ],
      ),
    );
  }
}
