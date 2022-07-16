import 'package:flutter/material.dart';
import 'OTP_Screen.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {

  TextEditingController _inputMobileNumber = new TextEditingController();
  TextEditingController _inputEmail = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          Center(child: Image.asset("images/xcloud_login.png",fit: BoxFit.cover,),),

          Center(child: Text("XCLOUD",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),),),

          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Email ",style:TextStyle(color: Color(0xFF0f0f3b))),),

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
                  labelText: "Enter Email.",
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
                  // suffixIcon: Icon(Icons.check,color: Colors.lightBlue,),
                ),
                keyboardType: TextInputType.emailAddress,
                //obsecureText: true or false for password visibility
                maxLength: 60,
                maxLines: 1,
                controller: _inputEmail,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Email cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Email");
                  }
                },
                onSaved: (value) {
                  _inputEmail.text = value!;
                },
              ),
            ),
          ),


          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Mobile Number ",style:TextStyle(color: Color(0xFF0f0f3b))),),
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
                  labelText: "Enter Mobile Number.",
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


                ),
                keyboardType: TextInputType.number,
                maxLength: 60,
                maxLines: 1,
                controller: _inputMobileNumber,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Mobile Number cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Mobile number");
                  }
                },
                onSaved: (value) {
                  _inputMobileNumber.text = value!;
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
              child: new Text('Submit',
                  style: new TextStyle(fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPPasswordPage()));

              },
            ),
          ),

        ],
      ),

    );
  }
}
