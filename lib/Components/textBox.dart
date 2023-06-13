import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class text extends StatefulWidget {
 
  final msg;

  const text({super.key, this.msg});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
            width: 800,
            height: 200,
            
            child: Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color.fromARGB(255, 133, 133, 133), width: 1),
               
               ),
              
              child: Text(
                   widget.msg,
                   textAlign: TextAlign.center,
                   style: const TextStyle(
                          color: Color.fromARGB(255, 71, 134, 252), 
                          fontSize: 50,
                          fontWeight: FontWeight.bold     
                   )
              ),
        )));
  }
}