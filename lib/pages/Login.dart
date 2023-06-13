import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pages/Components/botao.dart';
import 'package:pages/Components/caixaTexto.dart';
import 'package:pages/Components/textBox.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
    Widget build(BuildContext context) {
   
    _criaBody() {
      return Center(child:
      Container(
       child: Column(
        children: [
        Padding(padding: EdgeInsets.all(15)),
        Text(
                'Login',
                style: TextStyle(
                  fontSize: 30 ,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),),
        Padding(padding: EdgeInsets.all(15)),
         Container(
                width: MediaQuery.of(context).size.width - 200,
                child: CaixaTexto(
                  controlador: null,
                  msgValidacao: '',
                  senha: false,
                  texto: 'Gmail',
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 200,
                child: CaixaTexto(
                  controlador: null,
                  msgValidacao: '',
                  senha: false,
                  texto: 'Senha',
                ),
              ),
        Botao(
          funcao: null,
          key: null,
          texto: 'Entrar',
        )

        ],

       ) 
       
      ));
    }
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Hotel 3 Coqueiros'),
        backgroundColor: Color.fromARGB(255, 70, 70, 70),
        actions: [
          Botao(
            funcao: null,
            key: null,
            texto:'Home',
          ),
          Botao(
            funcao: null,
            key: null,
            texto:'Login',
          ),
          Botao(
            funcao: null,
            key: null,
            texto:'Atendimento',
          )
        ],
      ),
      body: _criaBody(),
    );
  }
}