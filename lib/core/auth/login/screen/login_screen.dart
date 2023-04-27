import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            // key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                    child: Padding(
                  padding: EdgeInsets.all(100.0),
                  child: Text('Login'),
                )),
                TextFormField(
                  // controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password should be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  // onTap: _forgotPassword,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    // if (_formKey.currentState.validate()) {
                    //   _loginUser();
                    // }
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          // value: _rememberMe,
                          // onChanged: (value) {
                          //   setState(() {
                          //     _rememberMe = value;
                          //   });
                          // },
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                    GestureDetector(
                      // onTap: _register,
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.google,
                      color: Colors.white),
                  label: const Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                  // color: Colors.red,
                  // onPressed: _googleSignIn,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.white),
                  label: const Text(
                    'Login with Facebook',
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
