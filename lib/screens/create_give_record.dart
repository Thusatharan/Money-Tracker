import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:money_tracker/constants/constants.dart';

class CreateGive extends StatefulWidget {
  const CreateGive({Key? key}) : super(key: key);

  @override
  State<CreateGive> createState() => _CreateGiveState();
}

class _CreateGiveState extends State<CreateGive> {
  final _formKey = GlobalKey<FormState>();
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
                        autofocus: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40),
                      ),
                    ]),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kGreenButton)),
                    onPressed: () {},
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
