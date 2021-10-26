import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://ouch-cdn2.icons8.com/qkqlEd2_N7eLdI_MKXsI5R7FNKrG6FSkwbpVwb8AcTg/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTA5/L2NhZGM2MGY4LTFj/YzgtNDMxZC04NGQz/LWE5NmViZjMwNWYx/MC5zdmc.png'),
            Transform.translate(
              offset: Offset(0, -50),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Donate',
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Help Poor Peoples',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w200,
                              fontSize: 20),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          suffixIcon: Icon(
                            Icons.check_circle,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          suffixIcon: Icon(
                            Icons.check_circle,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'amount',
                          suffixIcon: Icon(
                            Icons.check_circle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      child: Text('Donate'),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      colorBrightness: Brightness.light,
                      textTheme: ButtonTextTheme.accent,
                      elevation: 0,
                      highlightElevation: 2,
                      shape: StadiumBorder(),
                      height: 70,
                      minWidth: 350,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
