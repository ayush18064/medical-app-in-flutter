// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    // ignore: non_constant_identifier_names
    required this.ImagePath,
    required this.rating,
    required this.doctorName,
    // ignore: non_constant_identifier_names
    required this.Profession,
  });
  // ignore: non_constant_identifier_names
  final String ImagePath;
  final String rating;
  final String doctorName;
  // ignore: non_constant_identifier_names
  final String Profession;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // pic of the doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                ImagePath,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  rating,
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),

            Text(
              doctorName,
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              Profession,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
