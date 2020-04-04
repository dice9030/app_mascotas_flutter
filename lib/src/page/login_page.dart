import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Login()
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: double.infinity,height: 40,),
          Expanded(
            child: Column(
              children: <Widget>[
                Image(image: AssetImage('assets/login/dog.png')),
                SizedBox(height: 20,),
                Container(
                  child: Text('INICIAR SESION',style: TextStyle(fontSize: 30),),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Nombre',
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.blueGrey,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Contraseña',
                          icon: Icon(
                            Icons.lock,
                            color: Colors.blueGrey,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  child: Container(
                    child: Text('INGRESAR'),
                    padding: EdgeInsets.symmetric(horizontal: 118.0, vertical: 15.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0.0,
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  onPressed: (){}
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text('o tambien puedes iniciar sesión con:'),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      
                      child: FaIcon(FontAwesomeIcons.facebook,size: 50,color: Colors.blue,),
                    ),
                    Container(
                      
                      child: FaIcon(FontAwesomeIcons.twitter,size: 50, color: Colors.lightBlue,),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Text('2020'),
          ),
        ],
      ),
    );
  }
}
