import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    // Perform login logic here (e.g., validate credentials)

    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/orangeicon.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 325,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 325,
                child: TextField(
                  textInputAction: TextInputAction.go,
                  controller: passwordController,
                  obscureText: _showPassword == false ? true : false,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false ? Icons.visibility_off : Icons.visibility),
                      onTap: (){
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 325,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 255, 89, 0),
                    ),
                  ),
                  onPressed: login,
                  child: Text('Entrar'),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Text('Criar conta'),
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}