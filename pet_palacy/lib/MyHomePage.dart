import 'package:flutter/material.dart';
import 'package:pet_palacy/ListaDeClinicas.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _mostrarPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return AlertDialog(
              title: Text("PetPalacy",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              content: Text(
                  "Sistema para agendamentos de serviços prestados por petshops.",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Color.fromARGB(200, 50, 150, 83),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Fecha o pop-up
                  },
                  child: Text("Fechar",
                      style: TextStyle(color: Color.fromARGB(255, 253, 1, 1))),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text("Motivação",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              content: Text(
                  "O sistema de agendamentos petshop deverá proporcionar facilidades ao usuário, sendo ele o cliente ou o funcionário." +
                      "Contendo funcionalidades como agendamentos para consulta com veterinário, estádia, tosa, banho e vacinação de pets.",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Color.fromARGB(200, 253, 1, 1),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Fecha o pop-up
                  },
                  child: Text("Fechar",
                      style:
                          TextStyle(color: Color.fromARGB(255, 50, 150, 83))),
                ),
              ],
            );
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 107, 18),
              ),
              child: Text('Curiosidades',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 30)),
            ),
            ListTile(
              title: const Text('Cachorro'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CuriosidadeCachorro(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Gato'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CuriosidadeGato(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Cavalo'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Pato'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 107, 18),
        title: Text(widget.title),
        titleTextStyle:
            TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
      ),
      body: ListaDeClinicas(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Color.fromARGB(255, 255, 255, 255)),
          backgroundColor: Color.fromARGB(255, 10, 107, 18),
          onPressed: () {
            _mostrarPopup(context);
          }),
    );
  }
}

class CuriosidadeCachorro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 107, 18),
        title: Text("Cachorro"),
        titleTextStyle:
            TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Diversidade de Raças:\nExistem muitas raças de cachorros com diferentes características." +
                  "\nPersonalidade: \nSão leais e afetuosos, geralmente adoram a companhia humana." +
                  "\nExercício: \nPrecisam de exercícios regulares para manter a saúde." +
                  "\vAlimentação: \nUma dieta adequada é crucial para a saúde do cachorro.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}

class CuriosidadeGato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 107, 18),
        title: Text("Gato"),
        titleTextStyle:
            TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Diversidade de Raças:\nExistem muitas raças de gatos, cada uma com características físicas e temperamentos distintos." +
                  "\nPersonalidade:\nOs gatos são independentes, mas podem ser carinhosos e formar laços estreitos com seus donos." +
                  "\nExercício:\nEmbora sejam menos ativos do que os cães, os gatos ainda precisam de brincadeiras e estimulação física." +
                  "\nAlimentação:\nA dieta dos gatos deve incluir proteínas de alta qualidade e taurina, um aminoácido essencial.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
