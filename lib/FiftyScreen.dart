import 'package:flutter/material.dart';

class FiftyScreen extends StatelessWidget {
  final String name;
  final String date;
  final String time;
  final String shopName;
  final List<String> services;
  final String notes;

  const FiftyScreen({
    super.key,
    required this.name,
    required this.date,
    required this.time,
    required this.shopName,
    required this.services,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(color: Colors.amber, fontSize: 16);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'تم تأكيد الحجز بنجاح',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  size: 120,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.amber),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.amber, fontSize: 22),
                    ),
                    const SizedBox(height: 12),
                    Text('تاريخ الموعد: $date', style: style),
                    const SizedBox(height: 8),
                    Text('وقت الموعد: $time', style: style),
                    const SizedBox(height: 8),
                    Text('اسم الصالون: $shopName', style: style),
                    const SizedBox(height: 8),
                    const Text('الخدمات المطلوبة:', style: style),
                    for (String service in services)
                      Text('- $service', style: style),
                    const SizedBox(height: 8),
                    Text('ملاحظات: $notes', style: style),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'موافق',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.amber),
                    padding: const EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'تعديل الموعد',
                    style: TextStyle(color: Colors.amber, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
