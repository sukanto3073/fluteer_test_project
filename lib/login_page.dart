
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
//Api code section:

TextEditingController nameController =TextEditingController();
TextEditingController passwordController =TextEditingController();

void _register() {

}


// Login page Ui Section:

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                const Icon(Icons.phone_android,
                size: 100,
                ),
                const SizedBox(height: 20,),
                //Hello Text
                const Text("Hello User!",
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35
                      )
                ),
                const SizedBox(height: 10,),
                const Text("Welcome to our app & have a good day ",
                        style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17
                        )
                ),
               const SizedBox(height: 40,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                     border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(12.0),
                   ),
                   child: const Padding(
                     padding: EdgeInsets.only(left: 20.0),
                     child: TextField(

                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "User name",
                       ),
                     ),
                   ),
                 ),
               ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: GestureDetector(
                    onTap: (){
                      _register();

                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )


                //Email Input


                //Password Input



              ],
            ),
          ),
        ),
      ),
    );
  }
}

