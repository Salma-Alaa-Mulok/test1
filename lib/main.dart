import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hi James',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.blue[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/doctor2.png'),
                ),
                title: Text('Dr. Imran Syahir'),
                subtitle: Text('General Doctor\nSunday, 12 June\n11:00 - 12:00 AM'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search doctor or health issue',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.coronavirus),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.local_pharmacy),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.local_hospital),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Near Doctor',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/doctor2.png'),
                    ),
                    title: Text('Dr. Joseph Brostito'),
                    subtitle: Text('Dental Specialist\n4.8 (120 Reviews)'),
                    trailing: Text('Open at 17:00'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/doctor2.png'),
                    ),
                    title: Text('Dr. Imran Syahir'),
                    subtitle: Text('General Doctor'),
                    trailing: Text('1.2 KM'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
