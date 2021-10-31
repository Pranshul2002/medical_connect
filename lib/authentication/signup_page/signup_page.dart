import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  ScrollController controller = ScrollController();
  int i = 0;
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Create an Account!",
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
                  "Already have an account? Log In",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Euclid"),
                ),
              ),
            ),
            SizedBox(
                height: height * 0.45,
                child: Image.asset("assets/images/signup.png")),
            SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        validator: (val) {
                          if (val!.length < 8) {
                            return "Password must have at least 8 characters";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: " Enter Name",
                            hintStyle: const TextStyle(fontFamily: "Euclid"),
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xfffee293),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE6CEEA), width: 0),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          onChanged: (value) {
                            setState(() {
                              gender = "Male";
                            });
                          },
                          value: gender,
                          groupValue: "Male",
                          fillColor: MaterialStateProperty.all<Color>(
                              Color(0xfffee293)),
                        ),
                        Text(
                          "Male",
                          style: TextStyle(fontFamily: "Euclid"),
                        ),
                        Radio(
                          onChanged: (value) {
                            setState(() {
                              gender = "Female";
                            });
                          },
                          fillColor: MaterialStateProperty.all<Color>(
                              Color(0xfffee293)),
                          value: gender,
                          groupValue: "Female",
                        ),
                        Text(
                          "Female",
                          style: TextStyle(fontFamily: "Euclid"),
                        ),
                        Radio(
                          onChanged: (value) {
                            setState(() {
                              gender = "Other";
                            });
                          },
                          fillColor: MaterialStateProperty.all<Color>(
                              Color(0xfffee293)),
                          value: gender,
                          groupValue: "Other",
                        ),
                        Text(
                          "Other",
                          style: TextStyle(fontFamily: "Euclid"),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (val) {
                          if (val!.length < 8) {
                            return "Password must have at least 8 characters";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: " Enter Age",
                            hintStyle: const TextStyle(fontFamily: "Euclid"),
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xfffee293),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE6CEEA), width: 0),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        validator: (val) {
                          if (val!.length < 8) {
                            return "Password must have at least 8 characters";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: " Enter Phone Number",
                            hintStyle: const TextStyle(fontFamily: "Euclid"),
                            counterText: "",
                            prefixText: "+91 ",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xfffee293),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE6CEEA), width: 0),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        validator: (val) {
                          if (val!.length != 6) {
                            return "Please enter the correct otp";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: " Enter Otp",
                            hintStyle: const TextStyle(fontFamily: "Euclid"),
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xfffee293), width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xfffee293),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE6CEEA), width: 0),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: GestureDetector(
                onTap: () {
                  if (i < 4) {
                    controller.animateTo(width * (i + 1),
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.bounceOut);
                    setState(() {
                      i++;
                    });
                  }
                },
                child: Container(
                  height: 60,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xffFCC527),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      "Proceed",
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
