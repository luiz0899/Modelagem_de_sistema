import 'package:flutter/material.dart';
import 'package:pages/pages/CadastroCliente.dart';
import 'package:pages/pages/CadastroDeReservaCli.dart';
import 'package:pages/pages/CadastroDeReservaFun.dart';

import 'package:pages/pages/CadastroQuartos.dart';
import 'package:pages/pages/ConsultaReservaCli.dart';
import 'package:pages/pages/ConsultaReservaFun.dart';
import 'package:pages/pages/ContaCliente.dart';
import 'package:pages/pages/ContaFuncionario.dart';
import 'package:pages/pages/Login.dart';
import 'package:pages/pages/TelaInicial.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/consultaReservaCli',
      routes: {
        '/home': (context) => const TelaInicial(),
        '/login': (context) => const Login(),
        '/contaCliente': (context) => const ContaCliente(),
        '/contaFuncionario': (context) => const Contafuncionario(),
        '/cadastroCliente': (context) => const CadastroCliente(),
        '/cadastroQuarto': (context) => const CadastroQuartos(),
        '/cadastroReservaCli': (context) => const CadastroDeReservaCli(),
        '/cadastroReservaFun': (context) => const CadastroDeReservaFun(),
        '/consultaReservaCli': (context) => const ConsultaReservaCli(),
        '/consultaReservaCFun': (context) => const ConsultaReservaFun(),

      },
    );
  }
}
