import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   body: Container(
     padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
     color: Colors.black,
     child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row( //This part serves as the upper navigation bar. It shows the logo, the menu, and the search icon.
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              Text(
                "NETFLIX",
                style: TextStyle(
                  fontFamily: 'Bebas Neue',
                  color: Colors.red[900],
                  letterSpacing: 2.0,
                  fontSize: 35.0
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
          Row( //
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  'images/moneyheist.jpg',
                   width: 390.0,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  Text("  Netflix Originals",
                      style: TextStyle(fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),

                 Text(
                    "Show All >>> ",
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 12.0,
                    ),
                  )
              ],
            ),

          ),
          Container( //This container contains the row of the series/movies that are mainly featured in the application
            margin: EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/you.jpg',
                    height: 150.0,
                  ),
                  Image.asset(
                    'images/controlz.jpg',
                    height: 150.0,
                  ),
                  Image.asset(
                    'images/theorder.jpg',
                    height: 150.0,
                  ),

                ],
            ),

          ),

          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("          You",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white
                )),

                Text("   Control Z    ",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white
                    )),

                Text("The Order",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white
                    )),
              ],
            ),

          ),


          SizedBox(
            height: 10.0,
          ),


         Container(
           margin: EdgeInsets.only(top: 10.0),
           child:  Row(
             children: <Widget>[
               Text("   Recently Watched ",
                   style: TextStyle(fontSize: 15.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.white)
               ),
              Icon(
                Icons.watch_later,
                color: Colors.grey,
                size: 18.0,
              )
             ],
           ),
         ),

          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'images/bridgerton.jpg',
                  height: 150.0,
                ),
                Image.asset(
                  'images/emilyinparis.jpg',
                  height: 150.0,
                ),
                Image.asset(
                  'images/riverdale.jpg',
                  height: 150.0,

                ),

              ],
            ),


          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("          Bridgerton",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white
                    )),

                Text("Emily in Paris  ",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white
                    )),

                Text("   Riverdale      ",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white
                    )),
              ],
            ),

          ),



        ],
     ),
   ),

      bottomNavigationBar: BottomNavigationBar( // this is the bottom navigation bar of the application. This includes the icons that are meant to be clicked.
        backgroundColor: Colors.black.withOpacity(0.94) ,
        fixedColor: Colors.white,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        elevation: 0,
        unselectedItemColor: Colors.white.withOpacity(0.5),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery),
              label: 'Browse'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Profile'
          ),


        ],
        // onTap: ,

      ),

      );



  }
}
