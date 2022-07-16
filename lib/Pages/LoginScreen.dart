import 'package:flutter/material.dart';
import 'forget_password.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _inputUsername = new TextEditingController();
  TextEditingController _inputPassword = new TextEditingController();


  bool handle_password=true;


  void change_handle_password()
  {
    handle_password=handle_password==true?false:true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          Center(child: Image.asset("images/xcloud_login.png",fit: BoxFit.cover,),),

          Center(child: Text("XCLOUD",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),),),

          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Username ",style:TextStyle(color: Color(0xFF0f0f3b))),),
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
                  labelText: "Enter Username.",
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
                  // prefixIcon: Icon(Icons.mail, color: Colors.lightBlue,),
                  suffixIcon: Icon(Icons.check,color: Colors.lightBlue,),
                ),
                keyboardType: TextInputType.emailAddress,
                //obsecureText: true or false for password visibility
                maxLength: 60,
                maxLines: 1,
                controller: _inputUsername,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Username cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Username");
                  }
                },
                onSaved: (value) {
                  _inputUsername.text = value!;
                },
              ),
            ),
          ),


          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Password ",style:TextStyle(color: Color(0xFF0f0f3b))),),
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
                  labelText: "Enter Password.",
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
                  // prefixIcon: Icon(Icons.lock, color: Colors.lightBlue,),
                  suffixIcon: IconButton(
                    icon:Icon(Icons.warning,color: Colors.lightBlue,),
                    onPressed: (){


                      setState((){
                        change_handle_password();
                      });


                    },),

                ),
                obscureText: handle_password,
                keyboardType: TextInputType.text,
                maxLength: 60,
                maxLines: 1,
                controller: _inputPassword,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Password cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Password");
                  }
                },
                onSaved: (value) {
                  _inputPassword.text = value!;
                },
              ),
            ),
          ),

         SizedBox(height: 30,),

          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              minWidth: 320.0,
              height: 45,
              color: Color(0xFF0f0f3b),
              child: new Text('Login',
                  style: new TextStyle(fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

              },
            ),
          ),


          SizedBox(height: 20,),

          GestureDetector(
            child: Center(
              child: Text(
                "Forgot Password ? ",
                style: TextStyle(
                    color:Color(0xFF0f0f3b),
                    fontSize:16),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordPage()));
            },
          ),


        ],
      ),

    );
  }
}
