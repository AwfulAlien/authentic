import 'package:authentic/authentication_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Page',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signOut();
                },
                child: Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
