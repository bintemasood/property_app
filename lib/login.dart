import 'package:flutter/material.dart';
import 'package:property_app/components/my_button.dart';
import 'package:property_app/components/my_textfield.dart';
import 'package:property_app/components/square_tile.dart';
import 'package:property_app/property.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
 
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

//text editing controllers
 final usernameController = TextEditingController();
 final passwordController = TextEditingController();

//sign user in method
void signUserIn(){}

@override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey.shade300,
body: SingleChildScrollView(
  child: SafeArea(
    child: Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
      //logo
      const Icon(Icons.house_outlined,
      size: 100,
      color: Colors.blueAccent,
      ),
      //welcome back
      const Text("Login to Your Account",
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
        ),
        ),
  const SizedBox(height: 35),
      //username textfield
           MyTextField(
      controller: usernameController,
      hintText: 'username',
      obscureText: false,
           ),
           const SizedBox(height: 10),
      //password textfield
      MyTextField(
    controller: passwordController,
    hintText: 'password',
    obscureText: true,
      ),
  const SizedBox(height: 20),
  
     
      //sign in button
    // Icon(Icons.heart_broken),
    //           Text("Login to Your Account"),
    //           TextField(),
    //           TextField(),
    //           Text("Remind Me"),
            ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Property()));
                  },
                  child: const Text("Sign in")),
            
  
  //  MyButton(
  //   onTap: signUserIn,
  //  ),   
   const SizedBox(height: 15),
      //forgot password
      const Text(
        "Forgot the password?",
        style: TextStyle(color: Colors.blueAccent),
        ), 
      const SizedBox(height: 15),
  
      //or continue with
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Expanded(
              child: Divider(
          thickness: 0.5,
          color: Colors.grey.shade400,
        ), 
              ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Or continue with',
          style: TextStyle(color: Colors.grey.shade700),
          ),
        ),
               Expanded(
              child: Divider(
          thickness: 0.5,
          color: Colors.grey.shade400,
        ), 
              ),
          ],
        ),
      ),
      const SizedBox(height:30),
      //google=apple sign
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //facebook button
  SquareTile(imagePath: 'assets/images/facebook.png'),
  
  SizedBox(height: 30),
          //google button
  SquareTile(imagePath: 'assets/images/google.png'),
          SizedBox(height: 30),
          //apple button
  SquareTile(imagePath: 'assets/images/apple.png'),
        ],
      ),
      const SizedBox(height: 20),
      //not a member?register
      Row(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  ),
          const SizedBox(width: 4),
          Text(
            'Sign up',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
            ),
        ],
      ),
      ],
      ),
    ),
  ),
),
    );
  }
}