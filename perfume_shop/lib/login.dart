
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:perfume_shop/SignUp.dart';
import 'package:perfume_shop/mainScreen.dart';
import 'forgotPassword.dart';


class login extends StatefulWidget {
  const login ({Key key}) : super(key: key);
  @override
  _login createState() => _login();
}

class _login extends State<login> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Color(0xFFFF8A89);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ລົງຊື່ເຂົ້າໃຊ້',
          style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: mainTheme,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/perfume.jpg',
                height: size.height * 0.45,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: mainTheme,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'ອີເມວ',
                    fillColor: Colors.white,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim();
                    });
                  },
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_rounded,
                      color: mainTheme,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: mainTheme,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'ລະຫັດຜ່ານ',
                    fillColor: Colors.white,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Container(
                alignment: Alignment.centerRight,
                width: size.width * 0.8,
                child: FlatButton(
                  onPressed: () {
                    auth.signInWithEmailAndPassword(email: _email,).then((_){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ForgotPassword()));
                    });
                  },
                  child: Text(
                    'ລືມລະຫັດຜ່ານ?',
                    style: TextStyle(
                      color: mainTheme,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                      auth.signInWithEmailAndPassword(email: _email, password: _password ).then((_){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
                      });
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.redAccent[100],
                  child: Text('ເຂົ້າສູ່ລະບົບ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.redAccent[100],
                  child: Text('ລົງທະບຽນ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      width: size.width * 0.35,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.pink[50],
                        child: Text('FACEBOOK',
                            style: TextStyle(
                                color: mainTheme,
                                fontSize: 13.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      width: size.width * 0.35,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.pink[50],
                        child: Text('GMAIL',
                            style: TextStyle(
                                color: mainTheme,
                                fontSize: 13.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
