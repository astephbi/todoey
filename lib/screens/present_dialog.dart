import 'package:flutter/material.dart';

class PresentDialog {
  void present(BuildContext context, Function callBack) {
    TextEditingController textEditingController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
                color: Color(0xFF757575),
                child: Container(
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Add a new',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.lightBlue),
                          ),
                          TextFormField(
                            controller: textEditingController,
                            decoration: const InputDecoration(),
                            autofocus: true,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              callBack(textEditingController.text);
                            },
                            child: Text('Add '),
                          )
                        ]),
                  )),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                )));
      },
    );
  }
}
