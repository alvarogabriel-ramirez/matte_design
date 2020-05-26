import 'package:flutter/material.dart';
import 'package:matte_design/data.dart';
import 'package:matte_design/widgets/bottom_bar.dart';
import 'package:matte_design/widgets/song_image_section.dart';
import 'package:matte_design/widgets/top_bar.dart';

class DetailsPage extends StatefulWidget {

  final String songName;
  final String albumName;

  DetailsPage({this.songName,this.albumName});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF363B40),
            Color(0xFF2B2F33),
            Color(0xFF1B1D20),
          ],begin: Alignment.topLeft,end: Alignment.bottomRight )
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 120,
              child: TopBar()
              ),
            SizedBox(height: 20),
            SongImageSection(),
            SizedBox(height: 40),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.songName, 
                  style: TextStyle(
                    color: Colors.white60,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 35
                  )),
                  SizedBox(height: 10),
                  Text(widget.albumName, 
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 16
                  )),
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Slider(
                activeColor: Colors.deepOrange,
                inactiveColor: Colors.black,
                value: rating,
                onChanged: (newRating){
                  setState(() {
                    rating = newRating;
                  });
                },
                min: 0.00,
                max: 5.00,
              ),
            ),
            SizedBox(height: 20),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}