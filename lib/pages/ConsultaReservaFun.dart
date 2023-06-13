import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:pages/Components/botao.dart';
import 'package:pages/Components/textBox.dart';

class ConsultaReservaFun extends StatefulWidget {
  const ConsultaReservaFun({super.key});

  @override
  State<ConsultaReservaFun> createState() => _ConsultaReservaFunState();
}

class _ConsultaReservaFunState extends State<ConsultaReservaFun> {
  @override
Widget build(BuildContext context) {
  

    _criaBody() {
      return Center(
          child: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            const Text(
              'Reservas',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            text(
              msg: "Reservas aqui",
            ),
            Padding(padding: EdgeInsets.all(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Centraliza os botões na horizontal
              children: [
                Botao(texto: 'Alterar'),
                Botao(texto: 'Excluir'),
              ],
            ),
          ],
        ),
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