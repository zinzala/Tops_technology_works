// Question-11: Create login and registration form
import 'package:flutter/material.dart';
import 'package:flutter_assignment/module3/screens/Question_11//register.dart';
import 'package:flutter_assignment/module3/screens/Question_11/utils/11_question_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login-screen',
      // change the home widget to see login screen
      home:  RegisterScreen(),//LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // created form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        // wrapped column with Form widget
        child: Form(
          // set the form key
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter-Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return Utils.validateName(value!);
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter-Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return Utils.validateEmail(value!);
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              FilledButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.all(20.0),
                  ),
                ),
                onPressed: () {
                  // validating form
                  _formKey.currentState!.validate();
                },
                child: const Text('lOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
