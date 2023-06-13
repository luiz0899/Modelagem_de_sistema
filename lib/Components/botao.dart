import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Botao extends StatefulWidget {
  final funcao;
  final texto;

  const Botao({super.key, this.funcao, this.texto});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, 
            width: 1.0, 
          ),
          borderRadius: BorderRadius.circular(4), 
        ),
        child: ElevatedButton(
          onPressed: widget.funcao,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 252, 251, 251),
            ),
          ),
          child: Text(
            widget.texto,
          ),
        ),
      ),
    );
  }
}

