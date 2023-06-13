import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pages/Components/botao.dart';
import 'package:pages/Components/caixaTexto.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({super.key});

  @override
  State<CadastroCliente> createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  @override
  Widget build(BuildContext context) {
    _criaBody() {
      return Center(
          child: Container(
              child: Column(children: [
        Padding(padding: EdgeInsets.all(15)),
        const Text(
          'Cadastro De Clientes',
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
            texto: 'Nome',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Cpf',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Localização',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Telefone',
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
        title: const Text('Hotel 3 Coqueiros'),
        backgroundColor: Color.fromARGB(255, 70, 70, 70),
        actions: [
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
            texto: 'Atendimento',
          ),
          Expanded(
            child: Center(
              child: Text(
                'Nome do Cliente',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: _criaBody(),
    );
  }
}
