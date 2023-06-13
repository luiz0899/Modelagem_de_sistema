import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:pages/Components/botao.dart';
import 'package:pages/Components/caixaTexto.dart';

class CadastroDeReservaCli extends StatefulWidget {
  const CadastroDeReservaCli({super.key});

  @override
  State<CadastroDeReservaCli> createState() => _CadastroDeReservaState();
}

class _CadastroDeReservaState extends State<CadastroDeReservaCli> {
  @override
  Widget build(BuildContext context) {
    criaCalendar() {
      return TextFormField(
          controller: null,
          decoration: InputDecoration(
              labelText: "Digite seu data",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              prefixIcon: const Icon(Icons.calendar_month)),
          readOnly: true,
          onTap: () async {
            DateTime? dtaNasc = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2100),
            );

            if (dtaNasc != null) {
              String formattedDate = DateFormat('yyyy-MM-dd').format(dtaNasc);
              setState(() {
                null;
              });
            }
          });
    }

    _criaBody() {
      return Center(
          child: Container(
              child: Column(children: [
        Padding(padding: EdgeInsets.all(15)),
        const Text(
          'Cadastro De Reservas',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
          ),
        ),
        Padding(padding: EdgeInsets.all(15)),
        Text('Data de Saída:'),
        Padding(padding: EdgeInsets.all(15)),
        Container(
            width: MediaQuery.of(context).size.width - 225,
            child: criaCalendar()),
        const SizedBox(height: 15),
        Padding(padding: EdgeInsets.all(6)),
        Text('Data de Saída:'),
        Padding(padding: EdgeInsets.all(10)),
        Container(
            width: MediaQuery.of(context).size.width - 225,
            child: criaCalendar()),
        Padding(padding: EdgeInsets.all(8)),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Cliente',
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          child: const CaixaTexto(
            controlador: null,
            msgValidacao: '',
            senha: false,
            texto: 'Quarto',
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
