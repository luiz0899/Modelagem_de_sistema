import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pages/Components/botao.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
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