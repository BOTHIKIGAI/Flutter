import 'package:doctor_app/screens/doctors_screen.dart';
import 'package:doctor_app/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class LandindScreen extends StatefulWidget {
  const LandindScreen({super.key});

  @override
  State<LandindScreen> createState() => _LandindScreenState();
}

class _LandindScreenState extends State<LandindScreen> {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
          children: [
            // Titles (menu, location, symbol map)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu_outlined),
                    color: Colors.white
                ),
                const Column(
                  children: [
                    Text(
                      'Current Location',
                      style: TextStyle(color: Colors.black45),
                    ),
                    Text(
                      'Colombia',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on),
                    color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Titles and SearchBox
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
                child:  Column(
                  children: [
                    const Text(
                      'Find your desired',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      'Doctor Right Now!',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.indigo,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(
                            Icons.display_settings_rounded,
                            color: Colors.white,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                height: 0,
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                width: double .infinity,
                padding: const EdgeInsets.fromLTRB(25.0, 50, 25.0, 20),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(231, 238, 250, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Categories
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(231, 238, 250, 1),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0,1),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/electrocardiograma.png',
                                    width: 80.0,
                                    height: 80.0),
                                const Text(
                                  'Cardiologist',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(231, 238, 250, 1),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0,1),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/hueso.png',
                                    width: 80.0,
                                    height: 80.0),
                                const Text(
                                  'Orthopaedic',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(231, 238, 250, 1),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0,1),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/diente.png',
                                    width: 80.0,
                                    height: 80.0),
                                const Text(
                                  'Dentist',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),

                      // Top Doctors
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Top Doctors',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const DoctorScreen()),
                              );
                            },
                            child: const Text(
                              'See all',
                              style: TextStyle(
                                color:  Colors.indigo,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                        // First Doctor
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                          right: 20.0,
                          left: 20.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromRGBO(231, 238, 250, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/usuario.png',
                                width: 55.0,
                                height: 55.0,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dr. Jenny Roy',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo,
                                  ),
                                ),
                                Text(
                                  'Hearth Surgeon',
                                  style: TextStyle(
                                    color: Color.fromARGB(152, 106, 106, 108),
                                    fontSize: 14.5,
                                  ),
                                ),
                                Text(
                                  '\$300',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14.5,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('⭐ 5', style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                        // Second Doctor
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                          right: 20.0,
                          left: 20.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromRGBO(231, 238, 250, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/usuario.png',
                                width: 55.0,
                                height: 55.0,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dr. Santiago Cruz',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo,
                                  ),
                                ),
                                Text(
                                  'Cardiologist',
                                  style: TextStyle(
                                    color: Color.fromARGB(152, 106, 106, 108),
                                    fontSize: 14.5,
                                  ),
                                ),
                                Text(
                                  '\$280',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14.5,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('⭐ 5', style: TextStyle(fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(10.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      )
                                  ),
                                  child: const Text('Book'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // Third Doctor
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                          right: 20.0,
                          left: 20.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromRGBO(231, 238, 250, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/usuario.png',
                                width: 55.0,
                                height: 55.0,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dr. Milo J.',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo,
                                  ),
                                ),
                                Text(
                                  'Orthopaedic',
                                  style: TextStyle(
                                    color: Color.fromARGB(152, 106, 106, 108),
                                    fontSize: 14.5,
                                  ),
                                ),
                                Text(
                                  '\$300',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14.5,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('⭐ 5', style: TextStyle(fontSize: 15)),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(10.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      )
                                  ),
                                  child: const Text('Book'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}

