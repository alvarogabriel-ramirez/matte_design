import 'package:flutter/material.dart';
import 'package:matte_design/data.dart';
import 'package:matte_design/details_page.dart';
//import 'package:matte_design/data.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  Map<String,List<String>> songsList = {
    'SongName' : [
      'Ain\'t No Time','In Her Mouth','Low Life','Xanny Family','Lil Haiti Baby','Photo Copied','Seven Rings'],
    'AlbumName' : ['Future','Future','Future \' The Weeknd','Future','Future','Future','Future']
    
  };
  // AnimationController animationController;
  // Animation animation;
  List<bool> _isSelected = List.generate(8, (i) => false);

  //  @override
  // void initState() {
  //   super.initState();
  //   animationController = new AnimationController(vsync: this,duration: Duration(
  //     seconds: 1,
  //   ));
  //   animation = Tween<double>(begin: 0, end: 1).animate(animationController);
  //   //print(_isSelected[index]);
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF363B40),
            Color(0xFF2B2F33),
            Color(0xFF1B1D20),
          ],
          begin: Alignment.topLeft,end: Alignment.bottomRight
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text("EVOL - FUTURE", style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1
                ),),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.only(left: 20, right:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildButton(Icons.favorite,50,50,Color(0xFF222429),(){}),
                  Card(
                    color: primaryColor,
                    shape: CircleBorder(),
                    elevation: 8.0,
                        child: Container(
                                height: 150,
                                width: 150,
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
                                    
                                  ],
                                ),
                              ),
                  ),
                  buildButton(Icons.more_horiz,50,50,Color(0xFF222429),(){}),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),

                    itemCount: songsList['SongName'].length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(right:10.0, left: 20.0),
                        child:InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(
                              songName: songsList['SongName'][index],
                              albumName: songsList['AlbumName'][index],
                            )));
                          },
                          child: Container(
                            padding: EdgeInsets.only(top:5,bottom:5,left:5,right:5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: _isSelected[index] ? Color(0xFF181B1D) :  Color(0xFF181B1D).withOpacity(0.0),
                            ),
                            child: ListTile(
                              title: Text(songsList['SongName'][index], style: TextStyle(fontSize: 14,color: Colors.white70,fontWeight: FontWeight.bold),),
                              subtitle: Text(songsList['AlbumName'][index], style: TextStyle(fontSize: 12,color: Colors.white24,fontWeight: FontWeight.bold),),
                              trailing: buildAnimatedButton(
                                _isSelected[index] ? Icons.pause : Icons.play_arrow,40,40, _isSelected[index] ? Colors.deepOrange : Color(0xFF262A2F),
                                (){
                                  setState(() {
                                    // if(_isSelected[index] == false){
                                    //   animationController.forward();
                                    // }
                                    // else{
                                    //   animationController.reverse();
                                    // }
                                    _isSelected[index] = !_isSelected[index];
                                    print(_isSelected[index]);
                                  });
                              })
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
          ],
        ),
      ),
    );
  }

  Card buildButton(IconData icon,double height, double width, Color buttonColor,Function pressed) {
    return Card(
      color: primaryColor,
      shape: CircleBorder(),
      //elevation: 8.0,
      shadowColor: Colors.black,
          child: GestureDetector(
            onTap: pressed,
                  child: Container(
                    height: height,
                    width: width,
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
                              color: buttonColor,
                              //boxShadow: customShadow,
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Center(
                          child: Icon(icon,color: Colors.white54,size: 22,),
                        )
                      ],
                    ),
                  ),
          ),
    );
  }

  Card buildAnimatedButton(IconData icon,double height, double width, Color buttonColor,Function pressed) {
    return Card(
      color: primaryColor,
      shape: CircleBorder(),
      //elevation: 8.0,
      shadowColor: Colors.black,
          child: GestureDetector(
            onTap: pressed,
                  child: Container(
                    height: height,
                    width: width,
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
                              color: buttonColor,
                              //boxShadow: customShadow,
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Center(
                          child: Icon(
                            icon,
                            //progress: animation,
                            color: Colors.white54,
                            size: 22,
                          ),
                        )
                      ],
                    ),
                  ),
          ),
    );
  }

}