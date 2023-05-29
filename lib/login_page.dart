import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget _body(){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.only(left: 1, right: 1, top: 1, bottom: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/orangeicon.png',
            width: 150,
            height: 150,
            ),
            SizedBox(
              width: 275,
              child: TextField(
                onChanged: (text){
                },
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
              SizedBox(
                width: 275,
                child: TextField(
                  onChanged: (text){
                  },
                  textInputAction: TextInputAction.go,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 10),
            SizedBox(
              width: 275,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 89, 0),
                  ),
                ),
                child: Text('Entrar'),
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text('Criar conta'),
              onTap: (){
                Navigator.of(context).pushNamed('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _body(),
        ],
      )
    );
  }
}