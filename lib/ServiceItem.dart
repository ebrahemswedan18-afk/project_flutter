import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String image;
  final String name;
  final bool isSelected;
  final Function() onTap;

  const ServiceItem({
    super.key,
    required this.image,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 62,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8),
          // الحدود
          border: Border.all(
            color: isSelected ? Colors.amber : Colors.amber,
            width: isSelected ? 3 : 1,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              'image/pic .jpeg',
              height: 50,
              width: 58,
              fit: BoxFit.cover,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
