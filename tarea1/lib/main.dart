import 'package:flutter/material.dart';

//Este es un pequeño template que puedes utilizar para sustituir el main que te crea el comando Flutter Create
void main() {
  runApp(const MyApp()); //Le decimos a flutter que en el main queremos que corra la aplicación con la clase "My App"
}

class MyApp extends StatelessWidget { //Definimos la clase MyApp de un StatelessWidget (No se mueve)
  const MyApp({super.key}); //Pasamos los parametros como cualquier clase (Esto lo aprendieron en POO)

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  //Creamos el contexto de nuestra clase 
    return MaterialApp( //La clase debe retornar algo! En este caso un Widget de tipo MaterialApp
      title: 'Widgets Mas utilizados', //Aquí va el titulo de tu app
      theme: ThemeData( //Otro atributo es theme, nos ayuda a darle color y personalización de estilo a tu app que puedes utilizar en cualquier lugar
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 109, 197, 219)), //Color principal de mi app
        useMaterial3: true, // Utilizamos Material Design
      ),
      home: const MyHomePage(), //Otro atributo de Material App, es la pantalla home , en este caso le paso otra clase, la clase "BirthdayCard"
    );
  }
}



class MyHomePage extends StatefulWidget { //Definimos la clase MyHomePage de un StatelessWidget (No se mueve
  
  const MyHomePage({super.key}); //Pasamos los parametros como cualquier clase (Esto lo aprendieron en POO)
  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage>{

  bool boton1 = false;
  bool boton2= false;
  bool boton3= false;
  bool boton4= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold( //En este caso retornamos un Widget tipo Scaffold, es la pantalla con su appBar
      appBar: AppBar( //Tiene justamente de atributo un App Bar
        backgroundColor: Colors.blue.shade500, //Le damos color, aunque también podría tomarlo del contexto
        title: const Text('Mc Flutter', style: TextStyle(color: Colors.white),), //Otro atributo es el título
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.5, style: BorderStyle.solid)
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 10.0,left: 10.0),
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children:[
                const ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.black, child: Icon(Icons.person_rounded, color: Colors.white), ),
                  title: Center(child: Text('Flutter MC Flutter',style: TextStyle(fontSize: 28.0),)),
                  subtitle: Center(child: Text('Experienced App Developer')), contentPadding: EdgeInsets.all(1.0),
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Text('123 Main Street', textAlign: TextAlign.left),
                    ),
                    Expanded(
                      child: Text('(415) 555-0198', textAlign: TextAlign.right),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: IconButton(style: IconButton.styleFrom(foregroundColor: boton1?Colors.black:Colors.indigo),
                          onPressed: (){
                            const snackBar = SnackBar(
                              content:  Text('Botonsito de persona')
                            );
                            setState(() {
                              boton1 = !boton1;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }, icon: const Icon(Icons.man_3)),),
                        Expanded(child: IconButton(style: IconButton.styleFrom(foregroundColor: boton2?Colors.black:Colors.indigo),
                          onPressed: (){
                            const snackBar = SnackBar(
                              content:  Text('Botonsito de reloj')
                            );
                            setState(() {
                              boton2 = !boton2;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }, icon: const Icon(Icons.timer))),
                        Expanded(child: IconButton(style: IconButton.styleFrom(foregroundColor: boton3?Colors.black:Colors.indigo),
                          onPressed: (){
                            const snackBar = SnackBar(
                              content:  Text('Botonsito de celular')
                            );
                            setState(() {
                              boton3 = !boton3;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }, icon: const Icon(Icons.phone_android_outlined))),
                        Expanded(child: IconButton(style: IconButton.styleFrom(foregroundColor: boton4?Colors.black:Colors.indigo),
                          onPressed: (){
                            const snackBar = SnackBar(
                              content:  Text('Botonsito de celular')
                            );
                            setState(() {
                              boton4 = !boton4;
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          });
                          
                        }, icon: const Icon(Icons.phone_android_outlined))),
                      ],
                    )
                  ],
                )
              ]
              
            )
          )
        ],
      )
    );
  }
}