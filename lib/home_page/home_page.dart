import 'package:flutter/material.dart';
import 'package:medical_connect/chat_support/chat_support.dart';
import 'package:medical_connect/doctor_list/doctor_list_page.dart';
import 'package:medical_connect/profile_page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> cardNames = [
      "Surgery",
      "Pediatrics",
      "Internal Medicine",
      "Radiology",
      "Dermatology",
      "Gynaecology",
      "Neurology"
    ];

    List<String> images = [
      "Surgery.png",
      "Pediatrics.png",
      "Internal_Medicine.png",
      "Radiology.png",
      "Dermatology.png",
      "Gynaecology.png",
      "Neurology.png"
    ];

    List<String> doctorName = [
      "Dr. Myna R. Shetty",
      "Dr. Ganesh Pai",
      "Dr. Sri Ganesh",
      "Dr. Ruchi Sharma",
      "Dr. Anoop K R"
    ];

    List<String> speciality = [
      "Surgery",
      "Pediatrics",
      "Internal Medicine",
      "Radiology",
      "Dermatology",
      "Gynaecology",
      "Neurology",
    ];
    List<String> colorList = [
      "e52165",
      "0d1137",
      "d72631",
      "a2d5c6",
      "077b8a",
      "e2d810",
      "d9138a"
    ];
    List<double> rating = [4, 4.5, 4.8, 5, 4.2];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F9),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(
                "Hi Pranshul ,",
                style: TextStyle(
                    fontFamily: "Euclid",
                    fontSize: 24,
                    color: Color(0xff7469d0),
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
              child: Text(
                "Let's find you a doctor",
                style: TextStyle(
                    fontFamily: "Euclid",
                    fontSize: 24,
                    //color: Color(0xff7469d0),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 32,
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => DoctorListPage(null)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xff1fbfb8)),
                          height: 75,
                          width: width / 2 - 20,
                          child: const Center(
                              child: Text(
                            "Hospital",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Euclid",
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xff05716c)),
                        height: 75,
                        width: width / 2 - 20,
                        child: const Center(
                            child: Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Euclid",
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ChatSupport()));
                        },
                        child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xff1978a5)),
                          width: width / 2 - 20,
                          child: const Center(
                              child: Text(
                            "Support",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Euclid",
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xff031163)),
                        height: 75,
                        width: width / 2 - 20,
                        child: const Center(
                            child: Text(
                          "Emergency",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Euclid",
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontFamily: "Euclid",
                    fontSize: 16,
                    //color: Color(0xff7469d0),
                    fontWeight: FontWeight.w300),
              ),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardNames.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DoctorListPage(speciality[index])));
                      },
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    "assets/images/${images[index]}"),
                              ),
                              Text(cardNames[index])
                            ]),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                "Popular doctors",
                style: TextStyle(
                    fontFamily: "Euclid",
                    fontSize: 16,
                    //color: Color(0xff7469d0),
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorName.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ProfilePage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://ui-avatars.com/api/?name=${doctorName[index].substring(4).replaceAll(" ", "+")}&color=fff&background=${colorList[index % colorList.length]}"),
                                  radius: 30,
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        doctorName[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Euclid"),
                                      ),
                                      Text(
                                        speciality[index],
                                        style: TextStyle(fontFamily: "Euclid"),
                                      ),
                                      Text(
                                        "${rating[index]}/5",
                                        style: TextStyle(fontFamily: "Euclid"),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
            // support
            //hospitals near me

            //profile
          ],
        ),
      ),
    );
  }
}
