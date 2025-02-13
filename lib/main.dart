import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo
                  Row(
                    children: [
                      Text(
                        "H",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child:
                                Icon(Icons.circle, size: 6, color: Colors.blue),
                          ),
                          Text(
                            "apply",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Signup & Login Buttons
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                        ),
                        onPressed: () {},
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: CreateAccountScreen()),
          ],
        ),
      ),
    );
  }
}

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 700,
        height: 500,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: _buildTextField("First Name*", "Enter first name")),
                SizedBox(width: 20),
                Expanded(
                    child: _buildTextField("Last Name*", "Enter last name")),
              ],
            ),
            SizedBox(height: 15),
            _buildTextField("Address*", "Enter address"),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(child: _buildPasswordField("Password*")),
                SizedBox(width: 20),
                Expanded(child: _buildPasswordField("Confirm Password*")),
              ],
            ),
            SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                onPressed: () {
                  // TODO: Add sign-up logic
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Have a supplier account already? ",
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                      text: "Sign In Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
            ),
            suffixIcon: Icon(Icons.visibility_off),
          ),
        ),
      ],
    );
  }
}
