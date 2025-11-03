import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(25, 80, 25, 25),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade500, Color(0xff0C2B4E)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Berlin, Germany",
                  style: TextStyle(color: Colors.white, fontSize: 27),
                ),
                Text(
                  "Monday, June 23",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/cloudy.svg", height: 150),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "24°",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 80,
                            height: 1,
                          ),
                        ),
                        Text(
                          "Partly Cloudy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff0C2B4E).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "High : 26°C",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff0C2B4E).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Low : 18°C",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff0C2B4E).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              Text("Feels Like", style: TextStyle(color: Colors.white.withOpacity(0.6))),
                              Text("23°C", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
                            ]
                          ),
                        ),
                        Container(
                          width: 1.5,
                          height: double.infinity,
                          color: Colors.white.withOpacity(0.4),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              Text("Wind Speed", style: TextStyle(color: Colors.white.withOpacity(0.6))),
                              Text("19 km/h", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
                            ]
                          ),
                        ),
                        Container(
                          width: 1.5,
                          height: double.infinity,
                          color: Colors.white.withOpacity(0.4),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              Text("Humidity", style: TextStyle(color: Colors.white.withOpacity(0.6))),
                              Text("62%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
                            ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
