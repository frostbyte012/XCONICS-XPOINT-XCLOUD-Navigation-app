import 'package:flutter/material.dart';
import 'package:xcloud_app/Pages/LoginScreen.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {

  TextEditingController _inputPassword = new TextEditingController();
  TextEditingController _inputRepassword = new TextEditingController();



  bool handle_password=true,handle_repassword=true;


  void change_handle_Password()
  {
    handle_password=handle_password==true?false:true;
  }

  void change_handle_Repassword()
  {
    handle_repassword=handle_repassword==true?false:true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          Center(child: Image.asset("images/xcloud_login.png",fit: BoxFit.cover,),),

          Center(child: Text("XCLOUD",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),),),

          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("Password",style:TextStyle(color: Color(0xFF0f0f3b))),),
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
                   suffixIcon: IconButton(icon: Icon(Icons.shield),onPressed: (){

                     setState((){

                       change_handle_Password();

                     });

                   },)

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

          Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10),child:Text("New Password",style:TextStyle(color: Color(0xFF0f0f3b))),),
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
                  labelText: "Enter New password.",
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
                  suffixIcon: IconButton(icon: Icon(Icons.shield),onPressed: (){

                    setState((){
                      change_handle_Repassword();
                    });
                  },)

                ),
                obscureText: handle_repassword,
                keyboardType: TextInputType.text,
                maxLength: 60,
                maxLines: 1,
                controller: _inputRepassword,
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{2,}$');
                  if (value!.isEmpty) {
                    return ("New Pssword cannot be empty");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter New Password");
                  }
                },
                onSaved: (value) {
                  _inputRepassword.text = value!;
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

                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));

              },
            ),
          ),

        ],
      ),

    );
  }
}
