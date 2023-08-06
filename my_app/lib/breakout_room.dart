import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/modules.dart';

class BreakoutPage extends StatefulWidget {
  @override
  _BreakoutPageState createState() => _BreakoutPageState();
}

class _BreakoutPageState extends State<BreakoutPage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Welcome to Breakout Room!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '  Welcome to GOCONVO',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 14),
            Text(
              '             It is a place to develop your communication with one to one mentorship.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              // 80% of the available width
              child: Column(
                children: [
                  _buildEventCard('Event 1', '12:00 PM - 1:30 PM'),
                  _buildEventCard('Event 2', '2:00 PM - 3:30 PM'),
                  _buildEventCard('Event 3', '4:00 PM - 5:30 PM'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          width: MediaQuery.of(context).size.width *
              0.9, // 90% of the available width
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
                            height: 24,
                            width: 24,
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
                            height: 24,
                            width: 24,
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
                            height: 24,
                            width: 24,
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

  Widget _buildEventCard(String title, String time) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(
            255, 167, 215, 238), // Set the desired background color
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Time: $time'),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
