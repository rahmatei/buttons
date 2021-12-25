import 'package:buttons/buttons_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.purple),
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    if(states.contains(MaterialState.hovered)){
                      return Colors.red.withOpacity(0.04);
                    }
                    if(states.contains(MaterialState.focused)|| states.contains(MaterialState.pressed)){
                      return Colors.red.withOpacity(0.12);
                    }
                    return null;
                  })
                ),
                onPressed: (){},
                child:const  Text('TextButton'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
            onSurface: Colors.red
          ),
          onPressed: null,
          child: const Text('TextButton2 Disabled'),
        ),
        TextButton(
          child: const Text('Look Liske a FlatButton'),
          onPressed: (){},
          style: flatButtonStyle,
        )
            ],
          ),
      )
    )
    );
  }
}

