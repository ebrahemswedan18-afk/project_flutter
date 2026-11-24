import 'package:flutter/material.dart';

import 'FortyScreen.dart';

class ShopDeta extends StatelessWidget {
  final String name;
  final String city;
  final String rating;
  final String image;

  const ShopDeta({
    super.key,
    required this.name,
    required this.city,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          name,
          style: TextStyle(
            color: Color.fromARGB(255, 192, 192, 192),
            fontWeight: FontWeight(800),
          ),
        ),
      ),
      body: Stack(
        children: [
          // stack بعاد الصوره في
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 250,
            child: Image.asset(
              'image/pic .jpeg',
              // boxfit يمنح الصورة ابعاد دون تشويه ابعادها
              fit: BoxFit.cover,
            ),
          ),
          // stack ابعاد مساحة البيانات في
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            bottom: 0,

            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                // يجعل الزاويتين العلويتين فقط دائريتين
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.grey),
                      Text(city),
                      const SizedBox(width: 20),
                      const Icon(Icons.star, color: Colors.amber),
                      Text('$rating '),
                    ],
                  ),
                  // لتنسيق المسافات في الودجت على حسب الصفحة
                  const Spacer(),
                  const SizedBox(height: 8),
                  const Text(
                    'لخدمات الحلاقة وتصفيف الشعر بأيدي حلاقين محترفين',
                  ),
                  ListTile(
                    leading: const Icon(Icons.cut, color: Colors.amber),
                    title: Text('ابووليد'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone, color: Colors.amber),
                    title: Text("77888888"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.cut, color: Colors.amber),
                    title: Text('ابوفهد'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone, color: Colors.amber),
                    title: Text("77777777"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.access_time, color: Colors.amber),
                    title: Text("6:00 To 9:00"),
                  ),

                  ListTile(
                    leading: const Icon(Icons.event_busy, color: Colors.amber),
                    title: Text(' وقت الدوام جميع ايام الاسبوع'),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FortyScreen(
                              shopName: name,
                              image: 'image/pic .jpeg',
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'احجز الآن',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
