import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/breakout_room.dart';

class ModulesPage extends StatefulWidget {
  @override
  _ModulesPageState createState() => _ModulesPageState();
}

class _ModulesPageState extends State<ModulesPage> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modules'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Communication Development',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '      In this class, you will learn essential communication skills to excel in both personal and professional settings.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '      The class is designed to help you improve your verbal and non-verbal communication, public speaking, active listening, and more.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'One-to-One Mentorship',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildMentorshipCard(
              mentor: 'Mentor: Amandara Joshi',
              schedule: 'Session Schedule: Every Monday, 4:00 PM - 5:30 PM',
              location: 'Location: Virtual (Zoom Meeting)',
              mentorDetails:
                  'Amandara Joshi is an experienced communication expert with over 5 years of experience in public speaking and interpersonal communication. He is dedicated to helping individuals improve their communication skills and achieve their personal and professional goals.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          height: 66,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/home.jpg',
                            fit: BoxFit.contain,
                            height: 24, // Specify the height of the icon
                            width: 24, // Specify the width of the icon
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 12,
                              color: _currentIndex == 0
                                  ? Colors.purple
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BreakoutPage()));

                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/breakout room.png',
                            fit: BoxFit.contain,
                            height: 24, // Specify the height of the icon
                            width: 24, // Specify the width of the icon
                          ),
                          Text(
                            'Breakout Room',
                            style: TextStyle(
                              fontSize: 12,
                              color: _currentIndex == 1
                                  ? Colors.purple
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ModulesPage()));
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/modules.png',
                            fit: BoxFit.contain,
                            height: 24, // Specify the height of the icon
                            width: 24, // Specify the width of the icon
                          ),
                          Text(
                            'Modules',
                            style: TextStyle(
                              fontSize: 12,
                              color: _currentIndex == 2
                                  ? Colors.purple
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width / 3 * _currentIndex +
                    MediaQuery.of(context).size.width / 6 -
                    15,
                child: Container(
                  width: 30,
                  height: 2,
                  color: Colors.purple, // Indicator line color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMentorshipCard({
    required String mentor,
    required String schedule,
    required String location,
    required String mentorDetails,
  }) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      color: const Color.fromARGB(
          255, 175, 217, 237), // Set the color of the card here
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Set the border radius here
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                      'assets/tutor.jpg'), // Replace 'assets/mentor_image.jpg' with the actual asset image path
                ),
                SizedBox(width: 16),
                Text(
                  mentor,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(schedule),
            SizedBox(height: 8),
            Text(location),
            SizedBox(height: 16),
            Text(
              'About the Mentor:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(mentorDetails),
          ],
        ),
      ),
    );
  }
}
