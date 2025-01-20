import 'package:chat_app/widgets/custom_form_field/form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: _buildUI(),
      ),
    );
  }

  // Ui body
  Widget _buildUI() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),

          _loginForm(),

          _createAccountText()
        ],
      ),
    );
  }

  // UI header
  Widget _buildHeader() {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hi, Welcome Back!',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600
          ),
        ),

        Text('Welcome back you\'ve been missed',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16
          ),
        ),
      ],
    );
  }

  // Login form
  Widget _loginForm() {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height * 0.05),
          child: Form(
            child: Column(
              children: [
                CustomFormField(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  hintText: 'Email',
                ),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.06,),

                CustomFormField(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  hintText: 'Password',
                ),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),

                _loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Login button
  Widget _loginButton() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: MaterialButton(
        onPressed: (){},
        color: Theme.of(context).primaryColor,
        child: Text('Login', style: TextStyle(color: Colors.white),),
      ),
    );
  }

  Widget _createAccountText() {
    return Center(
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              style: TextStyle(
                color: Colors.black54
              ),
              text: 'Don\'t have an account?'
            ),

            TextSpan(
              text: ' Sign up',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500
              )
            )
          ]
        ),
      ),
    );
  }
}
