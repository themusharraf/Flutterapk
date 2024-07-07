import 'package:flutter/material.dart';

// boshlanishi 
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(),
      '/login': (context) => const LoginPage(),
      '/Register': (context) => const RegisterPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page welcome!'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body:Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/loga.png',
                  width: 200,
                  height: 200,
                ),
                ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                ElevatedButton(
                  child: const Text('Register'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Register');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
      


class LoginPage extends StatelessWidget {
  const LoginPage({Key ? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body:  Center(
        child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
        )
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body:  Center(
        child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
        )
      ),
    );
  }
}