import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pages/Components/botao.dart';

class ContaCliente extends StatefulWidget {
  const ContaCliente({super.key});

  @override
  State<ContaCliente> createState() => _ContaClienteState();
}

class _ContaClienteState extends State<ContaCliente> {
  @override
 Widget build(BuildContext context) {

    _criaBody() {
      return Center(child:
      Container(
        
        //child:Image.asset('/Img/pousada.jpg'),
        
       
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
            texto:'Atendimento',
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