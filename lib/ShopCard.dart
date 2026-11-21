import 'package:flutter/material.dart';

import 'ShopDeta.dart';

class ShopCard extends StatelessWidget {
  final String name;
  final String city;
  final String rating;
  final String image;

  const ShopCard({
    super.key,
    required this.name,
    required this.city,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    borderRadius:
    BorderRadius.circular(150);
    return Card(
      color: const Color.fromARGB(255, 78, 77, 75),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                32,
              ), // تحكم بدرجة الاستدارة من هنا (مثلاً 12 أو 16 أو 25)
              child: Image.asset(
                'image/pic .jpeg',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC9A545),
              ),
            ),
            Text(city, style: const TextStyle(color: Color(0xFFC9A545))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text(
                      rating,
                      style: const TextStyle(color: Color(0xFFC9A545)),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShopDeta(
                          name: name,
                          city: city,
                          rating: rating,
                          image: image,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'عرض التفاصيل',
                    style: TextStyle(color: Color(0xFFC9A545)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
