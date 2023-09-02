import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App iteso'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool boton1 = false;
  bool boton2= false;
  bool boton3= false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor:  Colors.blue.shade700,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLCqFLZtaEL1jjSYBE4dcPhLLMEqmxO9dOzg&usqp=CAU', width: MediaQuery.of(context).size.width, alignment: AlignmentDirectional.topCenter,),
            ListTile(
              title: const Text('El ITESO, Universidad Jesuita de Guadalajara', style: TextStyle(fontWeight:FontWeight.bold),),
              subtitle: const Text('San Pedro Tlaquepaque, Jal.', style: TextStyle(color: Colors.grey),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed:_incrementCounter, icon: const Icon(Icons.thumb_up, color: Colors.blue)),
                  IconButton(onPressed:_decrementCounter, icon: const Icon(Icons.thumb_down, color: Colors.blue)),
                  Text('$_counter')
                ],
              ),

            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:70, right: 70),
              child: Row(
                children: [
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            const snackBar = SnackBar(
                              content:  Text('Botonsito de correo')
                            );
                            setState(() {
                              boton1 = !boton1;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);}, icon: const Icon(Icons.mail), iconSize: 50, style:IconButton.styleFrom(foregroundColor: boton1?Colors.black:Colors.indigo)),
                      const Text('Correo', style: TextStyle(fontSize: 12),)
                    ],
                  )),
                  Expanded( child:Column(
                    children: [
                      IconButton(onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            const snackBar = SnackBar(
                              content:  Text('Puedes pedir información en rectoría')
                            );
                            setState(() {
                              boton2 = !boton2;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }, icon: const Icon(Icons.phone_forwarded_sharp), iconSize: 50,style: IconButton.styleFrom(foregroundColor: boton2?Colors.black:Colors.indigo)),
                      const Text('Llamada', style: TextStyle(fontSize: 12),)
                    ],
                  )),
                  Expanded( child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            const snackBar = SnackBar(
                              content:  Text('Se encuentra ubicado en Periférico Sur 8585')
                            );
                            setState(() {
                              boton3 = !boton3;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }, icon: const Icon(Icons.arrow_circle_right_rounded), iconSize: 50,style: IconButton.styleFrom(foregroundColor: boton3?Colors.black:Colors.indigo)),
                      const Text('Ruta', style: TextStyle(fontSize: 12),)
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México. Fundada en el año de 1957 por el ingenierio José Fernández del Valle y Ancira, entre otros, la unidad ha tenido una larga trayectoria. A continuación se presenta la historia de la institución en periodos de décadas.', style: TextStyle(fontSize: 10),),
            )
          ]
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
