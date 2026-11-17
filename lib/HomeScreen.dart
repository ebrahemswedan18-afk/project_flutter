import 'package:flutter/material.dart';

import 'category.dart';
import 'ShopCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(title: const Text('الرئيسية')),
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
                CategoryItem(icon: Icons.air, name: 'حلاقة شعر'),
                CategoryItem(icon: Icons.face, name: 'حلاقة الدقن '),
                CategoryItem(icon: Icons.brush, name: 'تهذيب '),
                CategoryItem(icon: Icons.content_cut, name: 'حلاقة كامله'),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('بطاقات الحجز', style: TextStyle(fontSize: 22)),
            ),
            ShopCard(
              name: ' صالون ابو وليد ',
              city: 'تريم ',
              rating: '38',
              image: 'assets/images/shop1.jpg',
            ),
            ShopCard(
              name: 'صالون ابو خليفة',
              city: 'تريم',
              rating: '36',
              image: 'assets/images/shop2.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
