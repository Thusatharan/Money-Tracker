import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_tracker/constants/constants.dart';

import '../../dummy_data/get_data.dart';
import '../../models/get_record.dart';
import '../create_give_record.dart';

class GetDetails extends StatelessWidget {
  const GetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Record> dummyData = getData;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'You have to get',
          style: TextStyle(color: kGreenTitle),
        ),
        elevation: 0,
      ),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 3 / 4,
              decoration: BoxDecoration(
                  color: kContainer,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2, spreadRadius: 2, color: kContainer)
                  ]),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Row(
                      children: const [
                        Text(
                          'Rs.',
                          style: TextStyle(fontSize: 35, color: kGreenTitle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '250000',
                          style: TextStyle(fontSize: 35, color: kGreenTitle),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 10, right: 50),
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
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  child: ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: kContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[index].name,
                        style: TextStyle(fontSize: 18, color: kGreenTitle),
                      ),
                      Text('Rs. ${dummyData[index].amount.toString()}',
                          style: TextStyle(fontSize: 18, color: kGreenTitle)),
                    ],
                  ),
                ),
              )),
            )
          ],
        ),
      )),
    );
  }
}
