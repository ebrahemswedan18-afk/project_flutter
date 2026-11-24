import 'package:flutter/material.dart';

import 'FiftyScreen.dart';
import 'LabeledField.dart';
import 'ServiceItem.dart';

class FortyScreen extends StatefulWidget {
  final String shopName;
  final String image;

  const FortyScreen({super.key, required this.shopName, required this.image});

  @override
  State<FortyScreen> createState() => _FortyScreen();
}

//
class _FortyScreen extends State<FortyScreen> {
  String name = '';
  String phone = '';
  String date = '';
  String time = '';
  String notes = '';
  String errorMessage = '';

  final List<String> serviceNames = [
    'تهذيب دقن',
    'تحديد',
    'قص شعر',
    'حمام بخار',
    'حلاقة بنمط',
  ];

  final List<String> serviceImages = [
    'image/pic .jpeg',
    'image/pic .jpeg',
    'image/pic .jpeg',
    'image/pic .jpeg',
    'image/pic .jpeg',
  ];
  // التمرير
  final List<String> selected = [];

  void toggleService(String service) {
    setState(() {
      if (selected.contains(service)) {
        selected.remove(service);
      } else {
        selected.add(service);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.shopName)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'image/pic .jpeg',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          LabeledField(
            label: 'الاسم',
            onChanged: (value) {
              name = value;
            },
          ),
          LabeledField(
            label: 'رقم التواصل',
            onChanged: (value) {
              phone = value;
            },
          ),
          LabeledField(
            label: 'تاريخ الحجز',
            onChanged: (value) {
              date = value;
            },
          ),
          LabeledField(
            label: 'توقيت الموعد',
            onChanged: (value) {
              time = value;
            },
          ),
          const SizedBox(height: 8),
          const Text('اختر الخدمات المطلوبة', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //التمرير

              for (int i = 0; i < serviceNames.length; i++)
                ServiceItem(
                  image: serviceImages[i],
                  name: serviceNames[i],
                  isSelected: selected.contains(serviceNames[i]),
                  onTap: () => toggleService(serviceNames[i]),
                ),
            ],
          ),
          LabeledField(
            label: 'ملاحظات',
            onChanged: (value) {
              notes = value;
            },
          ),
          Text(errorMessage, style: const TextStyle(color: Colors.red)),

          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              padding: const EdgeInsets.all(16),
            ),
            onPressed: () {
              if (name.trim().isEmpty ||
                  phone.trim().isEmpty ||
                  date.trim().isEmpty ||
                  time.trim().isEmpty ||
                  selected.isEmpty) {
                setState(() {
                  errorMessage =
                      'الرجاء تعبئة جميع الحقول واختيار خدمة واحدة على الأقل';
                });
              } else {
                setState(() {
                  errorMessage = '';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FiftyScreen(
                      name: name,
                      date: date,
                      time: time,
                      shopName: widget.shopName,
                      services: selected,
                      notes: notes,
                    ),
                  ),
                );
              } // هنا سنفتح صفحة التأكيد ونرسل لها البيانات
            },
            child: const Text(
              'تأكيد الحجز',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
