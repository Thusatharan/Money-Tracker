import 'package:flutter/material.dart';
import 'package:money_tracker/constants/constants.dart';
import 'package:money_tracker/screens/create_get_record.dart';
import 'package:money_tracker/screens/create_give_record.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  String getGreetings() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              getGreetings(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kContainer,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: kContainer)
                          ]),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'You have to get',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 23, 151, 0)),
                          ),
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Row(
                              children: const [
                                Text(
                                  'Rs.',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '145000',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kContainer,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: kContainer)
                          ]),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'You have to give',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 206, 17, 17)),
                          ),
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Row(
                              children: const [
                                Text(
                                  'Rs.',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '250000',
                                  style: TextStyle(fontSize: 25),
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Column(children: [
              const Opacity(
                opacity: 0.5,
                child: Text(
                  "Create Record",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Divider(
                height: 30,
                thickness: 3,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 3 / 5,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kGreenButton)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateGive(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'I am giving money',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 3 / 5,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kRedButton)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateGet(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'I am getting money',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 25, 68),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: Color.fromARGB(255, 0, 25, 68),
                  )
                ]),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Column(
              children: const [
                Opacity(opacity: 0.6, child: Text('Recent Transaction')),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'You just got Rs.2500 from Alex',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
