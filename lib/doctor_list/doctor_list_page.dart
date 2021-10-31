import 'package:flutter/material.dart';
import 'package:medical_connect/profile_page/profile_page.dart';

class DoctorListPage extends StatefulWidget {
  String? special;
  @override
  _DoctorListPageState createState() => _DoctorListPageState();

  DoctorListPage(this.special);
}

class _DoctorListPageState extends State<DoctorListPage> {
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
    "Dermatology"
  ];
  List<double> rating = [4, 4.5, 4.8, 5, 4.2];
  List<String> colorList = [
    "e52165",
    "0d1137",
    "d72631",
    "a2d5c6",
    "077b8a",
    "e2d810",
    "d9138a"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      body: ListView.builder(
        itemCount: doctorName.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ProfilePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
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
                              widget.special ?? speciality[index],
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
        },
      ),
    );
  }
}
