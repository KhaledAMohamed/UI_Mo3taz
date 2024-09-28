import 'package:flutter/material.dart';
class ShowDialog extends StatelessWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      title: const Text('Account Created'),
      content: const Text(
          'Congratulations your account has been created for your business'),
      actions: <Widget>[
        Center(
          child: TextButton(
            child: const Text(
              'Continue',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ),
      ],
    );
  }
}
