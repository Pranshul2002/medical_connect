import 'package:flutter/material.dart';
import 'package:medical_connect/profile_page/profile_page.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({Key? key}) : super(key: key);

  @override
  _HospitalPageState createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              "Hospital Name",
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
      body: ListView(
        children: [
          Container(
              height: height * 0.3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    "https://www.asterhospitals.in/sites/default/files/styles/optimize_images/public/2021-04/Aster-cmi-1500%20%281%29_0.jpg?itok=HHl_WI3D",
                    fit: BoxFit.fill,
                  ))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  Text(
                    "PATIENTS",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 13, fontFamily: "Euclid"),
                  ),
                  Text(
                    "+2000",
                    style: TextStyle(
                        color: Colors.blue, fontSize: 16, fontFamily: "Euclid"),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "RATE",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 13, fontFamily: "Euclid"),
                  ),
                  Text(
                    "4.4",
                    style: TextStyle(
                        color: Colors.blue, fontSize: 16, fontFamily: "Euclid"),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "EXPERIENCE",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 13, fontFamily: "Euclid"),
                  ),
                  Text(
                    "+10 Years",
                    style: TextStyle(
                        color: Colors.blue, fontSize: 16, fontFamily: "Euclid"),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Text(
              "Description",
              style: TextStyle(
                  fontFamily: "Euclid",
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Text(
              "From donning, doffing & disposing the Personal Protective Equipment (PPE) to proper sanitizing of medical equipment, our doctors make sure that every patient is provided with a safe healing environment. To ensure continuity of patient care during this pandemic, our doctors have started conducting Virtual OPDs to reach patients who find it difficult to visit the hospital physically.",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Euclid",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              "Doctors",
              style: TextStyle(
                  fontFamily: "Euclid",
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
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
        ],
      ),
    );
  }
}
