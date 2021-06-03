import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'WSU Global Health Kenya';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'Enter your County',
              labelText: 'County',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'Enter your Sub-County',
              labelText: 'Sub-County',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'Enter the animal affected',
              labelText: 'Animal Affected',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'How many animals are affected',
              labelText: 'Number affected',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'How many animals are Dead',
              labelText: 'Number dead',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'What symptom did sick animal show',
              labelText: 'Symptom of the sick animal',
            ),
          ),

          TextFormField(
            decoration: const InputDecoration(

              hintText: 'How many people are affected',
              labelText: 'People affected',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'How many people are Dead',
              labelText: 'People dead',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'What symptom did sick people show',
              labelText: 'Symptom of the sick people',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'How was the person exposed ',
              labelText: 'mode of Exposure',
            ),
          ),



          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: null,
              )),
        ],
      ),

    );
  }
}