import 'package:flutter/material.dart';
import 'package:medical_connect/home_page/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonEnabled = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Euclid"),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Text(
                  "Don't have an account yet? Sign Up",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Euclid"),
                ),
              ),
            ),
            SizedBox(
                height: height * 0.45,
                child: Image.asset("assets/images/login.png")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                validator: (val) {
                  if (val!.length < 8) {
                    return "Password must have at least 8 characters";
                  } else {
                    return null;
                  }
                },
                onChanged: (text) {
                  if (text.length == 10) {
                    setState(() {
                      buttonEnabled = true;
                    });
                  } else {
                    if (buttonEnabled == true) {
                      setState(() {
                        buttonEnabled = false;
                      });
                    }
                  }
                },
                decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(fontFamily: "Euclid"),
                    prefixText: "+91 ",
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffE6CEEA), width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffE6CEEA), width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffE6CEEA), width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: const Color(0xffE6CEEA),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffE6CEEA), width: 0),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> HomePage()));
                },
                child: Container(
                  height: 60,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xff93529E),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      "Get OTP",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Euclid",
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
