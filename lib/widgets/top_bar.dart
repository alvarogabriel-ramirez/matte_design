import 'package:flutter/material.dart';
import 'package:matte_design/data.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(child: buildButton(Icons.arrow_back),onTap: (){
                  Navigator.pop(context);
                },),
                Text("PLAYING NOW", style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1
                ),),
                buildButton(Icons.menu),
              ],
            ),
          );
  }

  Card buildButton(IconData icon) {
    return Card(
      color: primaryColor,
      shape: CircleBorder(),
      //elevation: 8.0,
      shadowColor: Colors.black,
          child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    shape: BoxShape.circle,
                    
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF2C3035),
                            //boxShadow: customShadow,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Color(0xFF222429),
                            //boxShadow: customShadow,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Center(
                        child: Icon(icon,color: Colors.white54),
                      )
                    ],
                  ),
                ),
    );
  }
}