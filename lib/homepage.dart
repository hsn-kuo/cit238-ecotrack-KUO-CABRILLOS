import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  // Define text styles for consistency
  final TextStyle headerTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  final TextStyle subheaderTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/background.jpg',
              fit: BoxFit.cover,
            ),
          ),


// Darkened overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Color.fromARGB(255, 255, 255, 255).withOpacity(0.0)
                  ],
                ),
              ),
            ),
          ),

          // Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header Panel
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // User's picture and greeting
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/alex.jpg'),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello Alex!',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'You are doing great!',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Larger Footprint logo
                    Image.asset(
                      'assets/footprint_logo.png',
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),

              // Updated welcome message with text and image
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Text(
                      'Welcome to',
                      style: headerTextStyle,
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/ecotrack.png', // Your image path
                      height: 60, // Adjust the height as needed
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Where SMALL STEPS create BIG IMPACT',
                      style: subheaderTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Calculate Footprint button (Changed to green)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/calculator');
                  },
                  child: Text('Calculate Footprint'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Set button color to green
                  ),
                ),
              ),

              // Enter activities manually button
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextButton(
                  onPressed: () {
                    // Navigate to the enter activities manually page
                  },
                  child: Text(
                    'Enter your activities to calculate your ecological footprint.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          // Sarah's testimony with rectangle and soft edges
          Positioned(
            bottom: 210,
            left: 20,
            right: 20,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(216, 255, 252, 157),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/sarah.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sarah | A Concious Consumer',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'This app has truly transformed my life. It guided me through personalized recommendations, helped me set achievable goals, and celebrated my milestones.',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Space between testimonies
          SizedBox(height: 30),

          // Mike's testimony with rectangle and soft edges
          Positioned(
            bottom: 110,
            left: 20,
            right: 20,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(216, 255, 252, 157),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/mike.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mike | A Nature Lover',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Now, I feel empowered to make conscious choices every day, from reducing my energy consumption to supporting tree planting campaigns.',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Space between testimonies
          SizedBox(height: 20),

          // Green "Share your story" button
          Positioned(
            bottom: 70,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Share Your Stories Here'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set button color to green
              ),
            ),
          ),

          // Navigation Bar
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/results');
                      }),
                  // Home icon with indication (you can customize the indication)
                  NavigationButton(
                      icon: Icons.home,
                      onPressed: () {},
                      iconColor: Colors.green),
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
        color: iconColor ?? Colors.black, // Set icon color to green or black
        size: 30,
      ),
    );
  }
}
