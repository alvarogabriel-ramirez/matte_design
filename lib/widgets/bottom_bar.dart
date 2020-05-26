import 'package:flutter/material.dart';
import 'package:matte_design/data.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildButton(Icons.fast_rewind),
          Card(
              color: primaryColor,
              shape: CircleBorder(),
              //elevation: 8.0,
              shadowColor: Colors.black,
                  child: Container(
                          height: 100,
                          width: 100,
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
                                    color: Color(0xFF292C31),
                                    boxShadow: customShadow,
                                    shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    //boxShadow: customShadow,
                                    shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(Icons.pause,color: Colors.white),
                              )
                            ],
                          ),
                        ),
            ),
          buildButton(Icons.fast_forward),
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
                  height: 90,
                  width: 90,
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
                            color: Color(0xFF1B1E21),
                            //boxShadow: customShadow,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Color(0xFF292C31),
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