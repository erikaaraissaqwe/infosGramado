import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlueAccent,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Meu primeiro App"),
          ),
          body: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/gramado.jpg'),
                height: 200,
              ),
              Container(
                  color: Colors.lightBlueAccent,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Gramado',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          Text(
                            'Rio Grande do Sul - Brasil',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.blueGrey,
                            ),
                          )
                        ],
                      )),
                      Row(children: <Widget>[
                        Icon(Icons.star, color: Colors.blue),
                        Text('5.00'),
                      ])
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ButtonSmall(
                      icon: Icons.call,
                      text: 'Ligar',
                      onPress: callAction,
                    ),
                    ButtonSmall(
                      icon: Icons.location_on,
                      text: 'Mapa',
                      onPress: mapaAction,
                    ),
                    ButtonSmall(
                      icon: Icons.share,
                      text: 'Compartilhar',
                      onPress: shareAction,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    'Gramado is a small tourist city, southeast of Caxias do Sul and east of Nova Petrópolis in the southern Brazilian state of Rio Grande do Sul, in the Serra Gaúcha region. The city was originally settled by Azorean descendants and later received a contingent of German and Italian immigrants. Gramado is one of the cities along the scenic route known as Rota Romântica (Romantic Route).'),
              ),
            ],
          )),
    );
  }

  callAction() {}

  shareAction() {}

  mapaAction() {}
}

class ButtonSmall extends StatelessWidget {

  Function onPress;
  IconData icon;
  var text;

  ButtonSmall({
    required this.onPress,
    required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
        onPressed: onPress(),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            Text(text),
          ],
        ),
        )
    );
  }
}
