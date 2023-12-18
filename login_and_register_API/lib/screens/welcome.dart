import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login_and_register_api/widget/custom_scaffold.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column (
        children: [
          const SizedBox( // Separation
            height: 15,
          ),
          Row( // Titles - City, Icon Map and Hour
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Bogotá D.C', // City
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Icon( // Map Icon
                Icons.map_outlined,
                color: Colors.yellow,
              ),
              Text( // Hour
                DateFormat('HH:mm:ss').format(DateTime.now()),
                style: const TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          const SizedBox( // Separation
            height: 100,
          ),
          const Icon( // Icon Person Walk
            Icons.directions_walk_outlined,
            color: Colors.yellow,
            size: 45,
          ),
          const SizedBox( // Separation
            height: 10,
          ),
          const Text('Welcome Back', // Title - Welcome Back
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          const SizedBox( // Separation
            height: 40,
          ),
          Container( // TextField - User
            margin: const EdgeInsets.all(8.0),
            color: Colors.white,
            width: 400,
            height: 62,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '   User',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox( // Separation
            height: 10,
          ),
          Container( // TextField - Password
            margin: const EdgeInsets.all(8.0),
            color: Colors.white,
            width: 400,
            height: 62,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '   Password',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox( // Separation

            height: 20,
          ),   
          Row( // Button - Sing in
            children: [
              const SizedBox(
                width: 48,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 5),
                    Text('Log In  ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.location_on_rounded),
                  ],
                ),
              ),
            ],
          ),
          Row( // Button - Sing up
            children: [
              const SizedBox(
                width: 48,
              ),
              const Text('Don\'t have an account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text('Sing up',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
