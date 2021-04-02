import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myntra_test/PrimeMember.dart';
import 'package:myntra_test/pageviewer.dart';


import 'SplashScreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  //theme: ThemeData(fontFamily: 'Roboto'),
  home: Splash(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PrimeMember()));
                  },
                  child: Text("Become a Prime Member>",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FaIcon(FontAwesomeIcons.star,color: Colors.yellow,),
                      FaIcon(FontAwesomeIcons.star,color: Colors.yellow,),
                      FaIcon(FontAwesomeIcons.star,color: Colors.yellow,)
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
              color: Colors.black,

              ),
            ),
           ListTile(
             title: Text("Measurements",style: TextStyle(fontSize: 20),),
           ),
            Divider(color: Colors.black,thickness: 0.5,),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Catalog',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  // Text('Texture',style: TextStyle(fontSize: 20,),),
                  // SizedBox(height: 20,),
                  // Wrap(
                  //   spacing: 30,
                  //   children: [
                  //     Container(
                  //       height: 50,width: 50,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/t1.jpg')),
                  //       ),
                  //     ),
                  //
                  //     Container(
                  //       height: 50,width: 50,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/t2.jpg')),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,width: 50,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/t3.jpg')),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: ExpansionTile(title:Text("Body Type",style: TextStyle(fontSize: 20,)),
                    children: [
                     Container(
                       height: 150,
                      width: 270,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/type_body.png"),fit: BoxFit.cover
                        )
                      ),
                     ),
                    ],),
                  ),

                  SizedBox(height: 30,),
                  Text('Color',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Wrap(
                    spacing: 20,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.yellow,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                      ),


                    ],
                  ), SizedBox(height: 30,),
                  Text('Texture',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Wrap(
                    spacing: 30,
                    children: [
                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/t1.jpg')),
                        ),
                      ),

                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/t2.jpg')),
                        ),
                      ),
                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/t3.jpg')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        ),

      appBar: AppBar(

        actions: [
          MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PageViewer()));
          },
              child: FaIcon(FontAwesomeIcons.globe,color: Colors.white,size: 25,)),
          SizedBox(width: 10,)
        ],
        backgroundColor: Colors.grey,
        brightness: Brightness.light,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        //
        //   onPressed: () {},
        // ),
      ),
      body: SafeArea(

        child: Stack(

          children: <Widget>[
            Container(

              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.grey,

              image: DecorationImage(image:AssetImage('assets/images/mani.png'),
              fit: BoxFit.fitHeight)),


            ),
            Positioned(
              right: 10,
              child: MaterialButton(onPressed: (){
                final snackBar = SnackBar(content: Text('Your look is saved!',style: TextStyle(fontSize: 15,color: Colors.black),),
                backgroundColor: Colors.white,);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              textColor: Colors.white,

              elevation: 0,
              color: Colors.grey,
              shape: RoundedRectangleBorder(side:BorderSide(color: Colors.white,width: 1.5),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                child: Text("Save",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),),),
            Positioned(
              right: 10,
              top: 55,
              child: MaterialButton(onPressed: (){},
                textColor: Colors.white,

                elevation: 0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(side:BorderSide(color: Colors.white,width: 1.5),borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                  child: Text("Save As 🌍",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top:430),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
Text('Styles',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/images/one.jpg'),
                        promoCard('assets/images/two.jpg'),
                        promoCard('assets/images/three.jpg'),
                        promoCard('assets/images/four.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}