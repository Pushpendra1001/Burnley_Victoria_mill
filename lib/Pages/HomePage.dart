// ignore_for_file: file_names

import 'package:burnley_victoria_mill/Pages/videoGallery.dart';
import 'package:burnley_victoria_mill/Pages/view360page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Burnley Victoria mill",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  fit: BoxFit.cover,
                  "assets/maincampus.png",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "The Burnley Victoria Mill campus is a significant part of the University of Central Lancashire’s (UCLan) presence in Burnley, offering a vibrant and inclusive educational environment. This campus, which is a blend of historical architecture and modern facilities, provides students with a unique learning experience. The Victoria Mill, a Victorian-era factory, has been repurposed into a contemporary university setting, reflecting UCLan’s commitment to integrating tradition with innovation. Students at the Burnley campus can enjoy small class sizes, fostering a close-knit community atmosphere, while benefiting from state-of-the-art facilities such as cutting-edge manufacturing suites, observation suites, and moot courtrooms1. The campus is not only a place for academic pursuits but also serves as a hub where students, businesses, and the local community collaborate to foster growth and learning. With its recent expansion, including the conversion of Newtown Mill into a canal-side campus, UCLan’s Burnley campus is poised to offer an even richer educational landscape23.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const View360Page(),
                      ));
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.teal[900],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Explore in 360",
                    style: GoogleFonts.juliusSansOne(
                        textStyle:
                            const TextStyle(fontSize: 24, color: Colors.white)),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoGalleryScreen(),
                      ));
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.teal[900],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "View Video of Campus",
                    style: GoogleFonts.juliusSansOne(
                        textStyle:
                            const TextStyle(fontSize: 24, color: Colors.white)),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
