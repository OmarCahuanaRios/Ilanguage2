import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  _MyRegisterFormState createState() => _MyRegisterFormState();
}

class _MyRegisterFormState extends State<RegisterForm> {
  List listItem = ["Estudiante", "Profesor"];
  String valorInicial = "Estudiante";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 40.0,
        ),
        children: <Widget>[
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ILanguage',
                style: TextStyle(fontFamily: 'cursive', fontSize: 50.0),
              ),
              SizedBox(
                height: 15.0,
              ),
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'SIGN UP',
                style: TextStyle(fontFamily: 'arial', fontSize: 20.0),
              ),
              Divider(
                height: 10.0,
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "Ingrese nombres",
                  labelText: "Nombres",
                  labelStyle:
                      new TextStyle(color: Colors.white, fontSize: 16.0),
                  suffixIcon: Icon(
                    Icons.account_box_rounded,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Colors.red.shade400, width: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ingrese apellidos",
                  labelText: "Apellidos",
                  labelStyle:
                      new TextStyle(color: Colors.white, fontSize: 16.0),
                  suffixIcon: Icon(
                    Icons.account_box_rounded,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Colors.red.shade400, width: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
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
              SizedBox(height: 10.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Ingrese teléfono",
                  labelText: "Cellphone",
                  labelStyle:
                      new TextStyle(color: Colors.white, fontSize: 16.0),
                  suffixIcon: Icon(
                    Icons.add_call,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Colors.red.shade400, width: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle:
                        new TextStyle(color: Colors.white, fontSize: 16.0),
                    hintText: 'Ingrese contraseña',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(height: 10.0),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle:
                        new TextStyle(color: Colors.white, fontSize: 16.0),
                    hintText: 'Confirmar contraseña',
                    labelText: 'Confirm Password',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelStyle:
                        new TextStyle(color: Colors.white, fontSize: 16.0),
                    hintText: "Ingrese cargo",
                    labelText: "Cargo"),
                value: valorInicial,
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String? newValue) {
                  setState(() {
                    valorInicial = newValue!;
                  });
                },
                items: <String>["Estudiante", "Profesor"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
