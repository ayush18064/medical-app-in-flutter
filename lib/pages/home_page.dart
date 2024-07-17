import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/utilities/category_card.dart';
import 'package:project_app/utilities/doctor_card.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // app bar
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello ,",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Ayush Lodha",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  // profile pic

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Container(
                      child: Lottie.network(
                          "https://lottie.host/31cd912d-975c-438a-bc2c-0729bc1b067c/WiSGlScLuM.json"),
                    ),

                    const SizedBox(
                      width: 25,
                    ),
                    // animation
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How do you Feel ?",
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Fill out your details",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Get Started !",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                    // how do you feel
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25,
                        offset: Offset(0, 3),
                      )
                    ]),
                padding: const EdgeInsets.all(18),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                    ),
                    border: InputBorder.none,
                    hintText: "How can we help you ?",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    CatName: 'Dentist',
                    iconImagePath: "lib/icons/tooth.png",
                  ),
                  CategoryCard(
                    CatName: 'Surgeon',
                    iconImagePath: "lib/icons/surgeon1.png",
                  ),
                  CategoryCard(
                    CatName: 'Pharmacist',
                    iconImagePath: "lib/icons/medicine.png",
                  ),
                  CategoryCard(
                    CatName: 'Therapy',
                    iconImagePath: "lib/icons/therapy.png",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor List",
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DoctorCard(
                  ImagePath: 'lib/icons/doctor2.jpg',
                  rating: "4.2",
                  doctorName: 'Dr.Sachin Mehta',
                  Profession: 'Homeopathy,20 yrs',
                ),
                DoctorCard(
                  ImagePath: 'lib/icons/doctor2.jpg',
                  rating: "4.4",
                  doctorName: 'Dr.Ganesh Gupta',
                  Profession: 'Physician,7 yrs',
                ),
                DoctorCard(
                  ImagePath: 'lib/icons/doctor3.jpg',
                  rating: "4.8",
                  doctorName: 'Dr.Sussane Jain',
                  Profession: 'Dentist,7 yrs',
                ),
              ],
            ))
          ],

          // card ->How do you feel

          // search bar

          // categories horizontal list view

          // the list of the doctors
        ),
      ),
    );
  }
}
