import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/constants.dart';

class CreateGet extends StatefulWidget {
  const CreateGet({Key? key}) : super(key: key);

  @override
  State<CreateGet> createState() => _CreateGetState();
}

class _CreateGetState extends State<CreateGet> {
  TextEditingController _nameController = TextEditingController(text: 'Alex');
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Create Record',
          style: TextStyle(color: kRedTitle),
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
                        'I am getting money from',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        controller: _nameController,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40),
                        onChanged: (val) {
                          print(val);
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
                        autofocus: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40),
                      ),
                    ]),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(kRedButton)),
                    onPressed: () {
                      print('hii');
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
