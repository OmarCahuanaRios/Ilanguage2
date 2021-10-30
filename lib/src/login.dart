import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  MyAppForm({Key? key}) : super(key: key);

  @override
  _MyAppFormState createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 90.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ILanguage',
                style: TextStyle(fontFamily: 'cursive', fontSize: 50.0),
              ),
              CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              Text(
                'LOGIN',
                style: TextStyle(fontFamily: 'arial', fontSize: 20.0),
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
              ),
              TextField(
                autofocus: true,
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  hintText: "Ingrese Email",
                  labelText: "Email",
                  labelStyle:
                      new TextStyle(color: Colors.white, fontSize: 16.0),
                  suffixIcon: Icon(
                    Icons.alternate_email_sharp,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Colors.red.shade400, width: 5.0),
                  ),
                ),
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Ingrese contraseña',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: TextButton(
                    onPressed: () {},
                    child: Text('Sign in'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue[400],
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
