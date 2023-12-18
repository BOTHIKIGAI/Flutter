import 'package:doctor_app/screens/doctors_screen.dart';
import 'package:doctor_app/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class DoctorInformation extends StatefulWidget {
  const DoctorInformation({super.key});

  @override
  State<DoctorInformation> createState() => _DoctorInformationState();
}

class _DoctorInformationState extends State<DoctorInformation> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          // Title (Back)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const DoctorScreen()),
                  );
                },
                icon: const Icon(Icons.arrow_back_rounded),
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // Description Doctor
          Container(
            padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
            child: Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(231, 238, 250, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Dr. Tnaish Khan',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text('⭐ 4.8',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text('Heart Surgeon',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                      Text('Dhaka Medical College Hospital',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          // Qualification Doctor
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromRGBO(
                              255, 255, 255, 0.30196078431372547),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.group,
                          size: 70,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1000 +',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                          Text('Pateints',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromRGBO(
                              255, 255, 255, 0.30196078431372547),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.work_history_outlined,
                          size: 70,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('5 Years',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                          Text('Experience',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Text about Doctor
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25.0, 50, 25.0, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Text
                  Text('About Doctor',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Dr. Tanisha khan is the top most orthopaedic specialist in Dhaka Medical College hospital at Dhaka. She achived several award for her wonderfil contribution in her wonderful contribution in her own fields. She is available for private consultation',
                    style: TextStyle(
                      fontSize: 17,
                        fontWeight: FontWeight.w500,
                      color: Colors.blueGrey
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Working Time',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                    ),
                  ),
                  Text('Mon-Fri 09:00 am · 08:00 pm',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Working Time',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(Icons.expand_circle_down,
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Calendar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          //padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(231, 238, 250, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.indigo,
                                ),
                                child: const SizedBox(
                                  width: double.infinity,
                                  height: 27,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Sat',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '09',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        //padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                              ),
                              child: const SizedBox(
                                width: double.infinity,
                                height: 27,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Sun',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              '10',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        //padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                              ),
                              child: const SizedBox(
                                width: double.infinity,
                                height: 27,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Mon',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              '11',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                              width: 5,
                            ),
                      Container(
                        width: 100,
                        height: 100,
                        //padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                              ),
                              child: const SizedBox(
                                width: double.infinity,
                                height: 27,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Tue',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              '12',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Qualification
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        //padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 238, 250, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.book_rounded)
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        //padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Book Appointment',
                              style: TextStyle(
                                color: Colors.white,
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
        ],
      ),
    );
  }
}