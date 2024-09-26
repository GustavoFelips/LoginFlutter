import 'package:flutter/material.dart';
import 'Contador.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}


class Login extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
        backgroundColor: Colors.blue,  // Nova cor da barra de título
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Bem Vindo!',
              style: TextStyle(
                fontSize: 22,  // Tamanho menor para o título
                color: Colors.blue,  // Nova cor do título
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Sign in',
              style: TextStyle(
                fontSize: 16,  // Diminuindo o subtítulo
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'User Name',
                labelStyle: TextStyle(color: Colors.blue),  // Cor dos labels
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              style: TextStyle(fontSize: 14), 
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.blue), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
              style: TextStyle(fontSize: 14),  
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.blue,  
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Ação de login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16, color: Colors.white),  // Texto do botão
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Does not have an account?",
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),  // Texto menor e cor neutra
                ),
                TextButton(
                  onPressed: () {
                    // Implementação para criar conta
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,  // Cor do link de cadastro
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
