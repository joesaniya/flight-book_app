import 'package:flutter/material.dart';

class InputFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isReadOnly;
  final VoidCallback onTap;
  final String hintText;

  InputFieldWithLabel({
    required this.label,
    required this.controller,
    required this.isReadOnly,
    required this.onTap,
    this.hintText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: controller,
                readOnly: isReadOnly,
                onTap: onTap,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: hintText.isNotEmpty ? hintText : null,
                  suffixIcon: isReadOnly
                      ? IconButton(
                          icon: Icon(Icons.calendar_today, color: Colors.grey),
                          onPressed: onTap,
                        )
                      : null,
                ),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffECF2E7),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              padding: EdgeInsets.all(4),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
