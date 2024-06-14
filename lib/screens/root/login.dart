import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:planting_app/screens/root/root.dart';
import '../../database/database_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final DatabaseHelper _dbHelper = DatabaseHelper();

  String _errorMessage = '';

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      final user = await _dbHelper.getUser(_emailController.text, _passwordController.text);
      if (user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Root()),
        );
      } else {
        setState(() {
          _errorMessage = 'Invalid email or password';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              const Color.fromARGB(255, 118, 227, 194),
              Color.fromARGB(255, 173, 245, 223),
              Color.fromARGB(255, 223, 250, 242),
            ],
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
          height: MediaQuery.sizeOf(context).height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1000),
                        child: Text(
                          "حصاد",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: FadeInUp(
                          duration: Duration(milliseconds: 1300),
                          child: Text(
                            "نحو مستقبل أفضل للتجاره الزراعيه في مصر",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 60),
                          FadeInUp(
                            duration: Duration(milliseconds: 1400),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 152, 219, 199),
                                          blurRadius: 20,
                                          offset: Offset(0, 10),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade200,
                                              ),
                                            ),
                                          ),
                                          child: TextFormField(
                                            controller: _emailController,
                                            decoration: InputDecoration(
                                              hintText: "البريد الالكتروني أو رقم الهاتف",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              border: InputBorder.none,
                                            ),
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'يرجى إدخال البريد الإلكتروني أو رقم الهاتف';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade200,
                                              ),
                                            ),
                                          ),
                                          child: TextFormField(
                                            controller: _passwordController,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              hintText: "كلمة المرور",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              border: InputBorder.none,
                                            ),
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'يرجى إدخال كلمة المرور';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  FadeInUp(
                                    duration: Duration(milliseconds: 1500),
                                    child: Text(
                                      "نسيت كلمة المرور؟",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  if (_errorMessage.isNotEmpty)
                                    FadeInUp(
                                      duration: Duration(milliseconds: 1600),
                                      child: Text(
                                        _errorMessage,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  SizedBox(height: 20),
                                  FadeInUp(
                                    duration: Duration(milliseconds: 1600),
                                    child: MaterialButton(
                                      onPressed: _login,
                                      height: 70,
                                      color: const Color.fromARGB(255, 118, 227, 194),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "تسجيل الدخول",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
