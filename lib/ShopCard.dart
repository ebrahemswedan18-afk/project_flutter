import 'package:flutter/material.dart';

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
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   image,
            //   height: 150,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(city, style: const TextStyle(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text('$rating تقييم'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('عرض التفاصيل'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
