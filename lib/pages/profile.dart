import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Paras Jain',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'username',
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Edit Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Build in progress!'),
                      duration: Duration(seconds: 1),
                    ),
                  ); 
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text('My Orders'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Build in progress!'),
                      duration: Duration(seconds: 1),
                    ),
                  ); 
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: const Text('Address'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Build in progress!'),
                      duration: Duration(seconds: 1),
                    ),
                  ); 
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Settings'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Build in progress!'),
                      duration: Duration(seconds: 1),
                    ),
                  ); 
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}