import 'package:flutter/material.dart';
import 'package:loja_virtual/helpers/validators.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController pasController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: ListView(
                shrinkWrap: true, //ocupar a menor altura possivel
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(hintText: 'E-mail'),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    validator: (email) {
                      if(!emailValid(email)) {
                        return 'E-mail inválido';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: pasController,
                    decoration: const InputDecoration(hintText: 'Senha'),
                    autocorrect: false,
                    obscureText: true,
                    validator: (pass) {
                      if (pass.isEmpty || pass.length < 6) {
                        return 'Senha inválida';
                      }
                      return null;
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: const Text('Esqueci minha senha'),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if(formKey.currentState.validate()){

                        }
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
