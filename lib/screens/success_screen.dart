import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/screens/details_screens/get_details.dart';

import '../constants/constants.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Record created successfully',
                    style: TextStyle(fontSize: 22),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1 / 2,
                    child: Image.asset('assets/images/success_png.png'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kGreenButton)),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GetDetails(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'View All Records',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
