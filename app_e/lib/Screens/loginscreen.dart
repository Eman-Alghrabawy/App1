import 'package:app_e/Screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  String? _validateUsername(String? value) {
    // Username validation logic here
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }
    if (value.length < 8) {
      return 'Username must have at least 8 characters';
    }
    if (value[0] != value[0].toUpperCase()) {
      return 'Username must start with an uppercase letter';
    }
    return null; // Username is valid
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }

    final RegExp uppercasePattern = RegExp(r'^[A-Z]');
    final RegExp specialCharPattern = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
    final RegExp digitPattern = RegExp(r'\d');

    if (value.isEmpty) {
      return 'Password cannot be empty';
    } else if (value.length < 10) {
      return 'Password must have more than 9 characters';
    } else if (!uppercasePattern.hasMatch(value)) {
      return 'Password must start with an uppercase letter';
    } else if (!specialCharPattern.hasMatch(value)) {
      return 'Password must contain at least one special character';
    } else if (!digitPattern.hasMatch(value)) {
      return 'Password must contain at least one digit';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    // Email validation logic here
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!value.contains('@') ||
        !value.contains('.') ||
        !value.contains('com')) {
      return 'Invalid email format';
    }
    return null; // Email is valid
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Image.asset(
                    "images/logo.png",
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  if (MediaQuery.of(context).orientation ==
                      Orientation.landscape)
                    Image.asset(
                      "images/quizLogo.png",
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(240, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          controller: _usernameController,
                          validator: _validateUsername,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              ),
                            ),
                            prefixIcon:
                                const Icon(Icons.person, color: Colors.grey),
                            suffixIcon: const Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          validator: _validatePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 15.0,
                              ),
                            ),
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.grey),
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          controller: _emailController,
                          validator: _validateEmail,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 15.0,
                              ),
                            ),
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.grey),
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'New to quizz app?',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            width: 140,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.green,
                                ),
                              ),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          CategoryScreen(),
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        const Icon(
                          Icons.fingerprint,
                          color: Colors.blue,
                          size: 50,
                        ),
                        const Text(
                          "Touch ID",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: true,
                                    activeColor: Colors.green,
                                    onChanged: (value) {}),
                                const Text("Remember me"),
                              ],
                            ),

                            // Spacer(),
                            InkWell(
                              onTap: () {
                                print("Hello we are ITI");
                              },
                              child: const Text(
                                "Forget password",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
