import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: const Color.fromARGB(255, 72, 203, 233),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.green,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Image.asset('assets/upnLogo.png'),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.person, color: Colors.black),
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username tidak boleh kosong';
                          }
                          return null;
                        },
                        onSaved: (value) => _username = value!,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: !_isVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.lock, color: Colors.black),
                          suffixIcon: IconButton(
                            icon: Icon(
                                _isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black),
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                          ),
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value!,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 44, 96, 227),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            if (_username == 'hasna' && _password == '104') {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomePage(username: _username),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Center(
                                    child: Text('Username atau password salah'),
                                  ),
                                ),
                              );
                            }
                          }
                        },
                        child: Text('Login',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
