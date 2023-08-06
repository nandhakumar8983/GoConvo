import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/breakout_room.dart';
import 'package:my_app/modules.dart';

class SubscriptionPlanPage extends StatefulWidget {
  @override
  _SubscriptionPlanPageState createState() => _SubscriptionPlanPageState();
}

class _SubscriptionPlanPageState extends State<SubscriptionPlanPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Define the plan details
    String planName = 'Intermediate Plan';
    String planDescription = 'Access to all premium features';
    String planDuration = '3 month';

    // Define the mentor details
    String mentorName = 'Amandara Joshi';
    String mentorDetails = 'Experienced communication expert';

    // Define the communication class details
    String className = ' Communication Development';
    String classDetails = 'Develop your Communication skills';

    return Scaffold(
      appBar: AppBar(
        title: Text('Subscription Plan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Subscription Plan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              planName,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              planDescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Plan Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Price: ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Rs.1000',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Duration: ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  planDuration,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Mentor Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              mentorName,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              mentorDetails,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Communication Class',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              className,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              classDetails,
              style: TextStyle(fontSize: 16),
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
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
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
                              builder: (context) => BreakoutPage()),
                        );
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
                              builder: (context) => ModulesPage()),
                        );
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
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
