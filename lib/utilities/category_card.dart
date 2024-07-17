// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.CatName,
    required this.iconImagePath,
  });
  // ignore: prefer_typing_uninitialized_variables
  final iconImagePath;
  final String CatName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              CatName,
              style: GoogleFonts.poppins(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
