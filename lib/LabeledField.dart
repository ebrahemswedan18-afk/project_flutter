import 'package:flutter/material.dart';

class LabeledField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;

  const LabeledField({super.key, required this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(label, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          TextField(
            textAlign: TextAlign.end,
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                //
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 110, 66, 158),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
