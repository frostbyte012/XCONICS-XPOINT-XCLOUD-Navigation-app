import 'package:flutter/material.dart';
import 'package:xcloud_app/Pages/new_password_page.dart';

class OTPPasswordPage extends StatefulWidget {
  const OTPPasswordPage({Key? key}) : super(key: key);

  @override
  State<OTPPasswordPage> createState() => _OTPPasswordPageState();
}

class _OTPPasswordPageState extends State<OTPPasswordPage> {

  TextEditingController _inputMobileNumberOTP = new TextEditingController();
  TextEditingController _inputEmailOTP = new TextEditingController();



  bool handle_EmailOTP=true,handle_MobileOTP=true;


  void change_handle_EmailOTP()
  {
    handle_EmailOTP=handle_EmailOTP==true?false:true;
  }

  void change_MobileOTP()
  {
    handle_MobileOTP=handle_MobileOTP==true?false:true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          Center(child: Image.asset("images/xcloud_login.png",fit: BoxFit.cover,),),

          Center(child: Text("XCLOUD",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),),),

          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Email OTP",style:TextStyle(color: Color(0xFF0f0f3b))),),
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
                  labelText: "Enter Email OTP.",
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
                    icon: Icon(Icons.shield),
                    onPressed: (){
                    setState((){
                      change_handle_EmailOTP();
                    });
                  },)

                ),
                obscureText: handle_EmailOTP,
                keyboardType: TextInputType.text,
                maxLength: 60,
                maxLines: 1,
                controller: _inputEmailOTP,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Email OTP Number cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Email OTP");
                  }
                },
                onSaved: (value) {
                  _inputEmailOTP.text = value!;
                },
              ),
            ),
          ),

          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Mobile OTP",style:TextStyle(color: Color(0xFF0f0f3b))),),

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
                  labelText: "Enter Mobile Number OTP.",
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
                  // prefixIcon: Icon(Icons.lock, color: Colors.lightBlue,),b
                  suffixIcon: IconButton(icon: Icon(Icons.shield),onPressed: (){
                    setState((){
                      change_MobileOTP();
                    });
                  },)


                ),
                obscureText: handle_MobileOTP,
                keyboardType: TextInputType.text,
                maxLength: 60,
                maxLines: 1,
                controller: _inputMobileNumberOTP,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("Mobile OTP Number cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Mobile OTP number");
                  }
                },
                onSaved: (value) {
                  _inputMobileNumberOTP.text = value!;
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

                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPasswordPage()));

              },
            ),
          ),

        ],
      ),

    );
  }
}
