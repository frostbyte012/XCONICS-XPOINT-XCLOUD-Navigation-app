import 'package:flutter/material.dart';
import 'package:slidable_bar/slidable_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _input = new TextEditingController();

  final SlidableBarController controller1 = SlidableBarController(initialStatus: true);
  final SlidableBarController controller2 = SlidableBarController(initialStatus: true);
  // final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];


  bool handle_password=true;


  void change_handle_password()
  {
    handle_password=handle_password==true?false:true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("XCLOUD Navigation"),
        backgroundColor: Color(0xFF0f0f3b),
      ),


      drawer: Drawer(),

      body:Container(
        child: SlidableBar(
          backgroundColor: Colors.transparent,
          size: 155,
          slidableController: controller1,
          side: Side.left,
          clicker: Container(
            decoration: BoxDecoration(
              color: Color(0xFF0f0f3b),
              borderRadius:BorderRadius.only(bottomRight: Radius.circular(60),topRight:Radius.circular(60)),
            ),
            height: 70,
            width: 40,
            child: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          barChildren: [
            SizedBox(height: 10,),
            Center(child: Text("Flags",style:TextStyle(fontWeight: FontWeight.bold,fontSize:45,color: Colors.black),)),
            SizedBox(height: 20,),
            InkWell(
              child:Center(
                child:Container(
                  decoration: BoxDecoration(
                    color:Colors.orange,
                    borderRadius:BorderRadius.circular(15),
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Halt",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:25),),
                    Text("50",style: TextStyle(color: Colors.white,fontSize:20),),
                  ],
                ),
                
                height: 70,
                width: 130,
              ),) ,
              onTap: (){

              },
            ),
            SizedBox(height: 20,),
            InkWell(

              child:Center(child:Container(
                decoration: BoxDecoration(
                  color:Colors.yellow,
                  borderRadius:BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Idle",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize:25),),
                    Text("50",style: TextStyle(color: Colors.black,fontSize:20),),
                  ],
                ),
                height: 70,
                width: 130,
              ),) ,
              onTap: (){

              },
            ),
            SizedBox(height: 20,),
            InkWell(
              child:Center(child:Container(
                decoration: BoxDecoration(
                  color:Colors.red,
                  borderRadius:BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Theft",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:25),),
                    Text("50",style: TextStyle(color: Colors.white,fontSize:20),),
                  ],
                ),
                height: 70,
                width: 130,
              ),) ,
              onTap: (){

              },
            ),
            SizedBox(height: 20,),
            InkWell(
              child:Center(child:Container(
                decoration: BoxDecoration(
                  color:Colors.blue,
                  borderRadius:BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Route",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:17),),
                    Text("Deviation",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:17),),
                    Text("50",style: TextStyle(color: Colors.white,fontSize:15),),
                  ],
                ),

                height: 70,
                width: 130,
              ),) ,
              onTap: (){

              },
            ),
          ],
          child: Container(
            child: SlidableBar(
              backgroundColor: Colors.transparent,
              size: 155,
              slidableController: controller2,
              side: Side.right,
              clicker: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(bottomLeft: Radius.circular(60),topLeft:Radius.circular(60)),
                  color: Color(0xFF0f0f3b),
                ),
                child: Icon(Icons.play_arrow,color: Colors.white,),
                height: 70,
                width: 40,
              ),
              barChildren: [
                SizedBox(height: 10,),
                Center(child: Text("Status",style:TextStyle(fontWeight: FontWeight.bold,fontSize:45,color:Colors.black,),),),
                SizedBox(height: 20,),
                InkWell(
                  child:Center(child:Container(
                    decoration: BoxDecoration(
                      color:Colors.green,
                      borderRadius:BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Runnnig",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:25),),
                        Text("50",style: TextStyle(color: Colors.white,fontSize:20),),
                      ],
                    ),
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Center(child:Container(
                    decoration: BoxDecoration(
                      color:Colors.yellow,
                      borderRadius:BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Idle",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize:25),),
                        Text("50",style: TextStyle(color: Colors.black,fontSize:20),),
                      ],
                    ),
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Center(child:Container(
                    decoration: BoxDecoration(
                      color:Colors.red,
                      borderRadius:BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Halt",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:25),),
                        Text("50",style: TextStyle(color: Colors.white,fontSize:20),),
                      ],
                    ),
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Center(child:Container(
                    decoration: BoxDecoration(
                      color:Colors.blue,
                      borderRadius:BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No GPS",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:25),),
                        Text("50",style: TextStyle(color: Colors.white,fontSize:20),),
                      ],
                    ),
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Center(child:Container(
                    decoration: BoxDecoration(
                      color:Colors.grey,
                      borderRadius:BorderRadius.circular(15),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Offline",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:25),),
                        Text("50",style: TextStyle(color: Colors.white,fontSize:20),),
                      ],
                    ),
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
              ],
              child: Stack(
                children: [
                  Container(height: 730,width: 500,
                    child:GoogleMap(
                      initialCameraPosition: // required parameter that sets the starting camera position. Camera position describes which part of the world you want the map to point at.
                      CameraPosition(
                          target: LatLng(22.5448131,88.3403691),
                          zoom: 0.0,
                          tilt: 0.0),
                      scrollGesturesEnabled: true,
                      tiltGesturesEnabled: true,
                      trafficEnabled: false,
                      indoorViewEnabled: true,
                      compassEnabled: true,
                      rotateGesturesEnabled: true,
                      myLocationEnabled: true,
                      zoomGesturesEnabled: true,
                      minMaxZoomPreference:
                      new MinMaxZoomPreference(15, 1500),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(45, 10, 20, 10),
                    child: SizedBox(
                      height: 45,
                      width: 320,
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            counterText: "",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "Search",
                            labelStyle: TextStyle(color: Colors.grey),
                            // border:OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            // ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            //border:OutLineInputBorder or UnderLineInputBorder or InputBorder.none
                            // hintText: can be used
                            // hintStyle can be used for the styling of the hintText,
                            // filledColor:
                            //errorText:null, used for error message display
                            //filled:true
                            prefixIcon: IconButton(icon: Icon(Icons.search),onPressed: (){
                              //Todo

                            },),
                            suffixIcon: IconButton(icon: Icon(Icons.close),onPressed: (){

                              setState((){

                                _input.text="";

                              });
                            },
                            )
                        ),
                        keyboardType: TextInputType.text,
                        //obsecureText: true or false for password visibility
                        maxLength: 100,
                        maxLines: 1,
                        controller: _input,
                        onSaved: (value) {
                          _input.text = value!;
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //       IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //       IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //       IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //       IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //     ],
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          _fabAnimationController.reset();
          _borderRadiusAnimationController.reset();
          _borderRadiusAnimationController.forward();
          _fabAnimationController.forward();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.green,
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),



    );
  }
}
