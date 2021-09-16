import 'package:flutter/material.dart';
import 'package:lt_cit/SecondScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();

  _validateFields() {
    if(_controllerEmail.text.isEmpty ||
       _controllerPass.text.isEmpty) {
      return false;
    }
    return true;
  }

  _doLogin() {
    if(_validateFields()) {
      //chama outra tela
      Navigator.push(this.context, MaterialPageRoute(builder: (_) => SecondScreen(text: _controllerEmail.text)));
    } else {
      ScaffoldMessenger.of(this.context).showSnackBar(
        SnackBar(content: Text('Preencha os dados para continuar'), duration: Duration(seconds: 3))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    decoration: InputDecoration(
                      labelText: 'E-mail *'
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerPass,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha *'
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: _doLogin, 
                  child: Text('ENTRAR')
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}