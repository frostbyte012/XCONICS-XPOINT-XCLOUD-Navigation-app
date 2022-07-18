import 'package:flutter/material.dart';
import 'package:slidable_bar/slidable_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _input = new TextEditingController();

  final SlidableBarController controller1 = SlidableBarController(initialStatus: true);
  final SlidableBarController controller2 = SlidableBarController(initialStatus: true);


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
          size: 60,
          slidableController: controller1,
          side: Side.left,
          clicker: Container(
            decoration: BoxDecoration(
              color: Color(0xFF0f0f3b),
              borderRadius:BorderRadius.only(bottomRight: Radius.circular(60),topRight:Radius.circular(60)),
            ),
            height: 40,
            width: 40,
            child: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          barChildren: [
            SizedBox(height: 10,),
            Center(child: Text("Flags")),
            SizedBox(height: 10,),
            InkWell(
              child:Center(child:Container(
                child: Center(child: Text("Halt",style: TextStyle(color: Colors.white),)),
                color:Colors.orange,
                height: 70,
                width: 140,
              ),) ,
              onTap: (){

              },
            ),
            SizedBox(height: 10,),
            InkWell(
              child:Center(child:Container(
                child: Center(child: Text("Idle",style: TextStyle(color: Colors.black),)),
                color:Colors.yellow,
                height: 70,
                width: 140,
              ),) ,
              onTap: (){

              },
            ),
            SizedBox(height: 10,),
            InkWell(
              child:Center(child:Container(
                child: Center(child: Text("Theft",style: TextStyle(color: Colors.white),)),
                color:Colors.red,
                height: 70,
                width: 140,
              ),) ,
              onTap: (){

              },
            ),
            SizedBox(height: 10,),
            InkWell(
              child:Center(child:Container(
                child: Center(child: Text("   Route\nDeviation",style: TextStyle(color: Colors.white),)),
                color:Colors.blue,
                height: 70,
                width: 140,
              ),) ,
              onTap: (){

              },
            ),
          ],
          child: Container(
            child: SlidableBar(
              size: 60,
              slidableController: controller2,
              side: Side.right,
              clicker: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(bottomLeft: Radius.circular(60),topLeft:Radius.circular(60)),
                  color: Color(0xFF0f0f3b),
                ),
                child: Icon(Icons.play_arrow,color: Colors.white,),
                height: 40,
                width: 40,
              ),
              barChildren: [
                SizedBox(height: 10,),
                Center(child: Text("Status")),
                SizedBox(height: 10,),
                InkWell(
                  child:Center(child:Container(
                    child: Center(child: Text("Running",style: TextStyle(color: Colors.white),)),
                    color:Colors.green,
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child:Center(child:Container(
                    child: Center(child: Text("Idle",style: TextStyle(color: Colors.black),)),
                    color:Colors.yellow,
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child:Center(child:Container(
                    child: Center(child: Text("Halt",style: TextStyle(color: Colors.white),)),
                    color:Colors.red,
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child:Center(child:Container(
                    child: Center(child: Text("No GPS",style: TextStyle(color: Colors.white),)),
                    color:Colors.blue,
                    height: 70,
                    width: 140,
                  ),) ,
                  onTap: (){

                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child:Center(child:Container(
                    child: Center(child: Text("Offline",style: TextStyle(color: Colors.white),)),
                    color:Colors.grey,
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
    );
  }
}
