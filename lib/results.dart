import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? iconColor;

  NavigationButton(
      {required this.icon, required this.onPressed, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        icon,
        color: iconColor ?? Colors.black,
        size: 30,
      ),
    );
  }
}

class EcologicalFootprintAnalysisApp extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/energy.png',
    'assets/transpo.png',
    'assets/waste.png',
    'assets/lifestyle.png',
    'assets/water.png',
    'assets/food.png',
  ];

  final List<String> categories = [
    'ENERGY',
    'TRANSPORT',
    'WASTE',
    'LIFESTYLE',
    'WATER',
    'FOOD',
  ];

  final List<String> subheadings = [
    '3 Earths',
    '2.7 Earths',
    '2.2 Earths',
    '2.3 Earths',
    '1.8 Earths',
    '2.5 Earths',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Ecological Footprint Analysis'),
        backgroundColor: Colors.green, // Set the background color to green
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/alex.jpg',
                            height: 40.0,
                            width: 40.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Hello, Alex!',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'You are doing great!',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.lightGreen],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          'Your Ecological Footprint: 3 Earths',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Image.asset('assets/earth.png', height: 100.0),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(imagePaths.length, (index) {
                            return Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        imagePaths[index],
                                        height: 80.0,
                                      ),
                                    ),
                                    Text(
                                      categories[index],
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  subheadings[index],
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Center(
                          child: Text(
                            'Compare YOUR FOOTPRINT to GLOBAL AVERAGES',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Global Average: 2.8 Earths',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          Text(
                            'Your Footprint: 3 Earths',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0),
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(185, 255, 251, 172),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Insights and Recommendations:',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'You are beyond the average!',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Keep on minimizing waste generation by recycling and composting and choosing plant-based and locally sourced food options for a greener diet.',
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      // Add an empty container below the insights and recommendations
                      Container(
                        height: 50.0, // Adjust the height as needed
                        // You can add additional styling if required
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavigationButton(icon: Icons.star, onPressed: () {}),
                  NavigationButton(
                    icon: Icons.check_circle_rounded,
                    onPressed: () {},
                    iconColor: Colors.green,
                  ),
                  NavigationButton(
                    icon: Icons.home,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/homepage');
                    },
                  ),
                  NavigationButton(
                      icon: Icons.public,
                      onPressed: () {},
                      iconColor: Colors.black),
                  NavigationButton(
                      icon: Icons.person,
                      onPressed: () {},
                      iconColor: Colors.black),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
