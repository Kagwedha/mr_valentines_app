import 'package:flutter/material.dart';
import 'package:mr_valentines_app/screens/checklist/6_AddJob.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

final List<String> imagesrc = [
  "assets/images/servicing_cardimage.jpg",
  "assets/images/service3.jpg",
  "assets/images/oilservice.jpg",
];
final List<String> offers = [
  " 10% OFF",
  " 35% OFF",
  " 60% OFF",
];
final List<String> offersvalue = [
  " Mechanical Department",
  " Electrical Department",
  " Trailer Department",
];
final List<String> offercodes = [
  " Code: MECH318 ",
  " Code: ELEC136 ",
  " Code: TMECH81 ",
];
final List<String> servicesleft = [
  "assets/images/caroil.jpg",
  "assets/images/caroil.jpg",
  "assets/images/caroil.jpg",
  "assets/images/engineservice.png",
  "assets/images/engineservice.png",
  "assets/images/brakeservice.jpg",
  "assets/images/brakeservice.jpg",
];
final List<String> servicesright = [
  "assets/images/caroil.jpg",
  "assets/images/caroil.jpg",
  "assets/images/caroil.jpg",
  "assets/images/engineservice.png",
  "assets/images/engineservice.png",
  "assets/images/brakeservice.jpg",
  "assets/images/report.jpg",
];
final List<String> servicesnameleft = [
  "Employee 1 - Mechanic",
  "Employee 3 - Mechanic",
  "Employee 5 - Mechanic",
  "Employee 7 - Auto Electrician",
  "Employee 9 - Auto Electrician",
  "Employee 11 - Trailer Mechanic",
  "Employee 13 - Trailer Mechanic",
];
final List<String> servicesnameright = [
  "Employee 2 - Mechanic",
  "Employee 4 - Mechanic",
  "Employee 6 - Mechanic",
  "Employee 8 - Auto Electrician",
  "Employee 10 - Auto Electrician",
  "Employee 12 - Trailer Mechanic",
  "Reports Page",
];
int imagesrcindex = 0;

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Valentines auto Departments",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 2.5,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                        Color(0xffEEEEEE),
                        Color(0xFFEF6C00),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const <Widget>[
                      Text("Choose the Specific Employee",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesrc.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 40,
                              child: Card(
                                color: Colors.transparent,
                                elevation: 0,
                                child: Container(
                                  child: Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.asset(
                                        imagesrc[index],
                                        fit: BoxFit.fill,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    offersvalue[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    offers[index],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    offercodes[index],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 2.5,
                          decoration: const BoxDecoration(
                            gradient: const LinearGradient(colors: <Color>[
                              const Color(0xFFF9A825),
                              Color(0xFFEF6C00)
                            ]),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Text("Employee Management",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center),
                      Expanded(
                        child: Container(
                          height: 2.5,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xFFEF6C00),
                              const Color(0xFFEF6C00)
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

//------------------------------------------------------------------------------------

            SingleChildScrollView(
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddJob()))
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: servicesleft.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: <Widget>[
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 2,
                              height: 100,
                              color: Colors.transparent,
                              child: Card(
                                elevation: 5,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        child: Image.asset(
                                          servicesleft[index],
                                          fit: BoxFit.fill,
                                          width: 55,
                                          height: 55,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Text(
                                        servicesnameleft[index],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const AddJob()))
                              },
                              child: Container(
                                width:
                                    (MediaQuery.of(context).size.width - 25) /
                                        2,
                                height: 100,
                                color: Colors.transparent,
                                child: Card(
                                  elevation: 5,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ClipOval(
                                        child: Container(
                                          child: Image.asset(
                                            servicesright[index],
                                            fit: BoxFit.fill,
                                            width: 55,
                                            height: 55,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          servicesnameright[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
//------------------------------------------------------------------------------------
            ),
          ],
        ),
      ),
    );
  }
}
