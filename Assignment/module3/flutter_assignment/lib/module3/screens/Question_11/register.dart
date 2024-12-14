// registration page
import 'package:flutter/material.dart';
import 'package:flutter_assignment/module3/screens/Question_11/utils/11_question_utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // created key
  final _formKey = GlobalKey<FormState>();
  String? _gender = 'Male';

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Form(
            // set the key
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter-Contact-Number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    return Utils.validateContact(value!);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Text('Gender:'),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            value: 'Male',
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Male'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Female',
                          groupValue: _gender,
                          onChanged: (value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Female'),
                        SizedBox(
                          width: 20.0,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Enter-Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    return Utils.validatePassword(value!);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Enter-Confirm-Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    return Utils.validateConfirmPassword(_passwordController.text.trim(), value!);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FilledButton(
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.all(20.0),
                    ),
                  ),
                  onPressed: () {
                    _formKey.currentState!.validate();
                    },
                  child: Text('register'),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
