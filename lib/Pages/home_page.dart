import 'package:flutter/material.dart';
import 'package:slidable_bar/slidable_bar.dart';

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
              borderRadius:BorderRadius.circular(60),
            ),
            height: 40,
            width: 40,
            child: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          barChildren: [
            FlutterLogo(size: 50,),
            FlutterLogo(size: 50,),
            FlutterLogo(size: 50,),
            FlutterLogo(size: 50,),
          ],
          child: Container(
            child: SlidableBar(
              size: 60,
              slidableController: controller2,
              side: Side.right,
              clicker: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0xFF0f0f3b),
                ),
                child: Icon(Icons.play_arrow,color: Colors.white,),
                height: 40,
                width: 40,
              ),
              barChildren: [
                FlutterLogo(size: 50,),
                FlutterLogo(size: 50,),
                FlutterLogo(size: 50,),
                FlutterLogo(size: 50,),
              ],
              child: ListView(
                children: [

                  SizedBox(height: 5,),

                  Center(
                    child: SizedBox(
                      height: 45,
                      width: 320,
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            fillColor: Colors.black12,
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
