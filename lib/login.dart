import 'package:flutter/material.dart';
import 'package:login_and_sighnup_ui/signup.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(

            children: [
              SizedBox(height: 200,),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("Login",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),


              ),
              Text("welcome back!Login with your credentials",style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600]

              ),),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),

                height: 300,
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
                    SizedBox(height: 40,),
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                      },
                      style: ButtonStyle(
                        fixedSize: const MaterialStatePropertyAll(Size(400, 70)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                      child: const Text("Login",style: TextStyle(
                          fontSize: 18,
                          color: Colors.white

                      ),),
                    ),

                  ],
                ),
                
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?",style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600]

                  ),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpPage();
                      },));
                    },
                    child: Text("Sign Up",style: TextStyle(
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