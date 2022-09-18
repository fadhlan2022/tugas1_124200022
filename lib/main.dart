import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/flutter-logo.png',
                width: 100,
                height: 50,
              ),
      SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress, //Tipe Input Harus Berupa Alamat Email
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'example@email.com',
                              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                            ),
                            onChanged: (String value) {

                            },
                          ),
                        ),

                        SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                            ),
                            onChanged: (String value) {

                            },
                          ),
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: SizedBox(
                            width: 1500,
                            height: 35,
                            child: ElevatedButton(

                              onPressed: () {
                              },
                              child: Text('Log In'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: SizedBox(
                            width: 1500,
                            height: 35,
                            child: FlatButton(

                              onPressed: () {
                              },
                              child: Text('Forgot password ?'),
                            ),
                          ),
                        ),

                      ],
                    )),
              )
            ],
        ),
      ),
    );
  }
}