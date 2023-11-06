import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _title = "Ejemplo Nro 01";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCount(),
    );
  }
}

class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<StatefulWidget> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ejemplo Nro 1",
          style: TextStyle(fontSize: 35.0, fontFamily: "cursive"),
        ),
        backgroundColor: Color.fromARGB(137, 39, 235, 17),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 180.0,
            ),
            Text("El número es : $_count"),
            const Image(image: AssetImage("images/Apple.jpg"))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 20.0,
          color: const Color.fromARGB(255, 107, 105, 240),
        ),
      ),
      floatingActionButton: _crearButtoms(),
    );
  }

  Widget _crearButtoms() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: (() {
            _count = 0;
          }),
          tooltip: "Poner el contador en 0",
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (() {
            _count++;
          }),
          tooltip: "Se incremente el valor",
        )
      ],
    );
  }
}
