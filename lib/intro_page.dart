import 'package:flutter/material.dart';
import 'package:flutter_forms/homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              const Text(
                "Welcome Back, Login",
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.w800),
              ),
              const Spacer(
                flex: 3,
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            String username = _nameController.value.text;
            List<String> names = username.split(" ");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(
                          username: names[0],
                        )));
          },
          label: const Text("Next Page")),
    );
  }
}