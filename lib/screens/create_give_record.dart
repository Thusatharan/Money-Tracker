import 'dart:math';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:money_tracker/constants/constants.dart';
import 'package:money_tracker/models/get_record.dart';

import '../dummy_data/get_data.dart';

class CreateGive extends StatefulWidget {
  const CreateGive({Key? key}) : super(key: key);

  @override
  State<CreateGive> createState() => _CreateGiveState();
}

class _CreateGiveState extends State<CreateGive> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late int amount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Create Record',
          style: TextStyle(color: kGreenTitle),
        ),
      ),
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 5 / 6,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(children: [
                      Text(
                        'I am giving money to',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40),
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                      ),
                    ]),
                  ),
                  Container(
                    child: Column(children: [
                      Text(
                        'Amount',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40),
                        onChanged: (val) {
                          setState(() {
                            amount = int.parse(val);
                          });
                        },
                      ),
                    ]),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kGreenButton)),
                    onPressed: () {
                      Random random = Random();
                      int id = random.nextInt(1000);
                      getData.add(Record(id: id, name: name, amount: amount));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Create Record',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      )),
    );
  }
}
