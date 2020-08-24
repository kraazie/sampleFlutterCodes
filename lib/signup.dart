import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_codes/validations/signup_validation.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(children: [
          TextField(
            decoration: InputDecoration(
              labelText: "First Name",
              prefixIcon: Icon(Icons.person),
              errorText: validationService.firstName.error,
            ),
            onChanged: (String value) {
              validationService.changeFirstName(value);
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Last Name",
              prefixIcon: Icon(Icons.person),
              errorText: validationService.lastName.error,
            ),
            onChanged: (String value) {
              validationService.changeLastName(value);
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Date Of Birth",
              prefixIcon: Icon(Icons.calendar_today),
              errorText: validationService.dob.error,
              hintText: "yyyy-mm-dd",
            ),
            onChanged: (String value) {
              validationService.changeDOB(value);
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Gender",
              prefixIcon: Icon(Icons.person_outline),
              errorText: validationService.gender.error,
            ),
            onChanged: (String value) {
              //TODO::
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "CNIC",
              prefixIcon: Icon(Icons.confirmation_number),
              errorText: validationService.cnic.error,
            ),
            onChanged: (String value) {
              //TODO::
            },
          ),
          SizedBox(height: 80.0),
          RaisedButton(
            child: Text('Submit'),
            onPressed: (!validationService.isValid) ? null : validationService.submitData,
          )
        ]),
      ),
    );
  }
}
