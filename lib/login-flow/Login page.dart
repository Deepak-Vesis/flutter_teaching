import 'package:calculator/login-flow/user_data.dart';
import 'package:calculator/page/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == "test@example.com" && password == "1234") {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Login Successful ✅")));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Invalid Credentials ❌")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              var check = isCheck(_emailController.text,_passwordController.text);
              if(check){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
              }else{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(body: Center(child: Text("fail"),),),));
              }
            }, child: const Text("Login")),
          ],
        ),
      ),
    );
  }

  bool isCheck(String email, String password) {
    var data = ls.where(
      (element) => element.email == email && element.password == password,
    );
    return data.isNotEmpty;
  }
}
