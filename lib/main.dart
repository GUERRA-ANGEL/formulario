import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Formulario de Datos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoPaternoController = TextEditingController();
  final TextEditingController apellidoMaternoController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final TextEditingController edadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Nombre:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: nombreController,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su nombre',
                  ),
                ),
                Text(
                  'Apellido Paterno:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: apellidoPaternoController,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su apellido paterno',
                  ),
                ),
                Text(
                  'Apellido Materno:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: apellidoMaternoController,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su apellido materno',
                  ),
                ),
                Text(
                  'Teléfono:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: telefonoController,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su teléfono',
                  ),
                ),
                Text(
                  'Correo Electrónico:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: correoController,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su correo electrónico',
                  ),
                ),
                Text(
                  'Edad:',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: edadController,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su edad',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navegar a la segunda pantalla y pasar los datos como parámetros
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SegundaPantalla(
                          nombre: nombreController.text,
                          apellidoPaterno: apellidoPaternoController.text,
                          apellidoMaterno: apellidoMaternoController.text,
                          telefono: telefonoController.text,
                          correo: correoController.text,
                          edad: edadController.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String telefono;
  final String correo;
  final String edad;

  SegundaPantalla({
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.telefono,
    required this.correo,
    required this.edad,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Nombre: $nombre'),
                Text('Apellido Paterno: $apellidoPaterno'),
                Text('Apellido Materno: $apellidoMaterno'),
                Text('Teléfono: $telefono'),
                Text('Correo Electrónico: $correo'),
                Text('Edad: $edad'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


