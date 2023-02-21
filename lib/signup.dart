import 'package:flutter/material.dart';
import 'package:login_and_sighnup_ui/login.dart';

class SignUpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(

            children: [
              SizedBox(height: 150,),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("Sign Up",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),


              ),
              Text("Create an Account.its free",style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]

              ),),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),

                height: 430,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600]

                    ),),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(

                        ),

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Password",style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600]

                    ),),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Confirm Password",style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600]

                    ),),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red[300]),
                        fixedSize: const MaterialStatePropertyAll(Size(400, 70)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                      child: const Text("Sign Up",style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,

                      ),),
                    ),

                  ],
                ),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600]

                  ),),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),)),
                    child: Text("Login",style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[800]

                    ),),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }


}