

import 'package:flutter/material.dart';
import 'package:movie_genie/assets/app_typography.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key, required this.controller, this.enabled = true, required this.onSubmitted});

  final TextEditingController controller;
  final bool enabled;
  final Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
        height: 30,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.white,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: "Поиск фильмов по названию или сюжету",
          labelStyle: AppTypography.helperText,
        ),
        onSubmitted:  onSubmitted,
      ),
    );
  }
}
