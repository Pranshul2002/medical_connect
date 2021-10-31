import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              "Doctor's Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Euclid"),
            ),
            Text(
              "Patient time 8:00am - 5:00pm",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Euclid",
                  color: Colors.green),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "Dr. Terry Aminoff",
                      style: TextStyle(
                          fontFamily: "Euclid",
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Text(
                      "Neurologists Specialist",
                      style: TextStyle(
                          fontFamily: "Euclid",
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-TgKfvrHertp_khGFY4ZY3e6JmjuxV9bo-A&usqp=CAU",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: const [
              Text(
                "4.8 Out of 5.0",
                style: TextStyle(
                    fontFamily: "Euclid",
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "340 Patients review",
                  style: TextStyle(
                      fontFamily: "Euclid",
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20)),
                width: 75,
                height: 40,
                child: Icon(
                  Icons.camera,
                  color: Colors.lightBlue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)),
                width: 75,
                height: 40,
                child: Icon(
                  Icons.call_end,
                  color: Colors.green,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20)),
                width: 75,
                height: 40,
                child: Icon(
                  Icons.message,
                  color: Colors.purple,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.people_alt,
                              size: 30,
                              color: Colors.lightGreen,
                            ),
                            Text(
                              "500+",
                              style: TextStyle(
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            Text(
                              "Successful Patients",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.people_alt,
                              size: 30,
                              color: Colors.deepPurple,
                            ),
                            Text(
                              "10 Years",
                              style: TextStyle(
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            Text(
                              "Experience",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.people_alt,
                              size: 30,
                              color: Colors.lightGreen,
                            ),
                            Text(
                              "500+",
                              style: TextStyle(
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            Text(
                              "Successful Patients",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.people_alt,
                              size: 30,
                              color: Colors.deepPurple,
                            ),
                            Text(
                              "10 Years",
                              style: TextStyle(
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            Text(
                              "Experience",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Euclid",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width - 20,
              height: 50,
              child: Center(
                  child: Text(
                "Book an appointment",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Euclid", fontSize: 20),
              )),
            ),
          )),
        ],
      ),
    );
  }
}
