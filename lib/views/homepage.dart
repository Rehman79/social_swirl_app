import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Image.asset(
                'lib/assets/sa.png',
                scale: 3,
              ),
              Expanded(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      title: Text("Services"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/services');
                      },
                      style: ListTileStyle.drawer,
                    ),
                    ListTile(
                        title: Text("Remote Jobs"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/remote_jobs');
                        }),
                    ListTile(
                        title: Text("Business"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/business');
                        }),
                    ListTile(
                        title: Text("E-Learning"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/e_learning');
                        }),
                    ListTile(
                        title: Text("About Us"),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/about');
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'SOCIAL SWIRL',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Text('Explore the world of web development with Soacial Swirl. Join our user-friendly courses led by industry')
          ],
        ),
      ),
    );
  }
}
