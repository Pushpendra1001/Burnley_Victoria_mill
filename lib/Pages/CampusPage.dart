import 'package:burnley_victoria_mill/Common/data.dart';
import 'package:burnley_victoria_mill/Pages/view360.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CampusScreen extends StatelessWidget {
  CampusScreen({super.key, required this.data});

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Victoria Mill'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                data["title"] ?? 'Default Title',
                style: TextStyle(fontSize: 32),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    data["img"] ?? 'Default Image Path',
                  ),
                ),
              ),
              data["view"] ?? false
                  ? InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => View360(path: data["img"]),
                          )),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.teal[900],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "View in 360",
                          style: GoogleFonts.juliusSansOne(
                              textStyle:
                                  TextStyle(fontSize: 24, color: Colors.white)),
                        )),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
