import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pages/Components/botao.dart';
import 'package:pages/Components/caixaTexto.dart';

class CadastroQuartos extends StatefulWidget {
  const CadastroQuartos({super.key});

  @override
  State<CadastroQuartos> createState() => _CadastroQuartosState();
}

class _CadastroQuartosState extends State<CadastroQuartos> {
  @override
  Widget build(BuildContext context) {
    _criaBody() {
      return Center(
          child: Container(
              child: Column(children: [
        Padding(padding: EdgeInsets.all(15)),
        const Text(
          'Cadastro De Quartos',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
          ),
        ),
        Padding(padding: EdgeInsets.all(15)),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Numero Do Quarto',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Disponibilidade do quarto',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Descrição do quarto',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Valor do quarto',
          ),
        ),
        const Botao(
          funcao: null,
          key: null,
          texto: 'Cadastrar',
        )
      ])));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 70, 70, 70),
        actions: const [
          Botao(
            funcao: null,
            key: null,
            texto: 'Home',
          ),
          Botao(
            funcao: null,
            key: null,
            texto: 'Cadastrar Reserva',
          ),
          Botao(
            funcao: null,
            key: null,
            texto: 'Consultar Reserva',
          ),
          Botao(
            funcao: null,
            key: null,
            texto: 'Cadastrar Quarto',
          ),
          Botao(
            funcao: null,
            key: null,
            texto: 'Consultar Quarto',
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
            texto: 'Relatorios',
          ),
        ],
      ),
      body: _criaBody(),
    );
  }
}
