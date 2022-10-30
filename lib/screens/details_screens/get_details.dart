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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_rounded),
            color: kGreenTitle,
          )
        ],
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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  child: ListView.builder(
                      itemCount: dummyData.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ListTile(
                              tileColor: kContainer,
                              leading: (dummyData[index].status)
                                  ? IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_rounded,
                                        size: 30,
                                      ),
                                      color: kGreenTitle,
                                    )
                                  : IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle_outline_rounded,
                                        size: 30,
                                      ),
                                    ),
                              title: Text(
                                dummyData[index].name,
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs. ${dummyData[index].amount.toString()}',
                                    style: TextStyle(color: kGreenTitle),
                                  ),
                                  Text(
                                    dummyData[index].dateTime.day.toString(),
                                    style: TextStyle(color: kGreenTitle),
                                  ),
                                ],
                              ),
                              trailing: const Icon(
                                Icons.delete_rounded,
                                color: Colors.red,
                              ),
                            ),
                          ))),
            )
          ],
        ),
      )),
    );
  }
}
