import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pages/Components/botao.dart';

class Contafuncionario extends StatefulWidget {
  const Contafuncionario({super.key});

  @override
  State<Contafuncionario> createState() => _ContafuncionarioState();
}

class _ContafuncionarioState extends State<Contafuncionario> {
  @override
  Widget build(BuildContext context) {

    _criaBody() {
      return Center(child:
      Container(
        
        child:Image.asset('asset/Img/santaCruz')
       
      ));
    }
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 70, 70, 70),
        actions: const [
           Botao(
            funcao: null,
            key: null,
            texto:'Home',
          ),
           Botao(
            funcao: null,
            key: null,
            texto:'Cadastrar Reserva',
          ),
           Botao(
            funcao: null,
            key: null,
            texto:'Consultar Reserva',
          ),
          
           Botao(
            funcao: null,
            key: null,
            texto:'Cadastrar Quarto',
          ),
            Botao(
            funcao: null,
            key: null,
            texto:'Consultar Quarto',
          ),
          Expanded(
              child: Center(
                child: Text(
                  'Nome do Gerente',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          Botao(
            funcao: null,
            key: null,
            texto:'Relatorios',
          ),
         
          
        ],
      ),
      body: _criaBody(),
    );
  }
}