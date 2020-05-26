import 'package:flutter/material.dart';
import 'package:matte_design/data.dart';

class SongImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      shape: CircleBorder(),
      elevation: 8.0,
          child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    shape: BoxShape.circle
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF222429),
                            //boxShadow: customShadow,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFF222429),
                            //boxShadow: customShadow,
                            shape: BoxShape.circle,
                            image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/01/e3/46/01e34630ad842bb50ceb8360389c705a.png", ),fit: BoxFit.cover,)
                          ),
                        ),
                      ),
                      // Center(
                      //   child: Image.network("https://i.pinimg.com/originals/01/e3/46/01e34630ad842bb50ceb8360389c705a.png", fit: BoxFit.cover,)
                      // )
                    ],
                  ),
                ),
    );
  }
}