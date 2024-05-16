import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:planting_app/screens/root/root.dart';
import 'package:planting_app/utils/app_colors.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
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
              Color.fromARGB(255, 223, 250, 242)
            ]
          )
        ),
     child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 60,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(duration: Duration(milliseconds: 1000), child: Text("حصاد", style: TextStyle(color: Colors.white, fontSize: 55,fontWeight: FontWeight.bold),)),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                    child:FadeInUp(duration: Duration(milliseconds: 1300), child: Text("نحو مستقبل أفضل للتجاره الزراعيه في مصر", style: TextStyle(color: Colors.white, fontSize: 18),)),),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 60,),
                          FadeInUp(duration: Duration(milliseconds: 1400), child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(255, 152, 219, 199),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                              )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "البريد الالكتروني أو رقم الهاتف",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                  ),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "كلمة المرور",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(height: 40,),
                          FadeInUp(duration: Duration(milliseconds: 1500), child: Text("نسيت كلمة المرور؟", style: TextStyle(color: Colors.grey),)),
                          SizedBox(height: 30,),
                          FadeInUp(duration: Duration(milliseconds: 1600), child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                              Root()  ));
                            },
                            height: 70,
                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            color: const Color.fromARGB(255, 118, 227, 194),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),

                            ),
                            // decoration: BoxDecoration(
                            // ),
                            child: Center(
                              child: Text("تسجيل الدخول", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            
                          )),
                         
                        ],
                      ),
                    ),
                ),
              )
            ],
          )
      ),
    );
  }
}