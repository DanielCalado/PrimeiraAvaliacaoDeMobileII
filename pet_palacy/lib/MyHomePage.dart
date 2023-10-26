import 'package:flutter/material.dart';
import 'package:pet_palacy/ListaDeClinicas.dart';

final _formKey = GlobalKey<FormState>(); // Adicione esta linha

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool checkBoxValue = false;
  String dropdownValue = 'Vacinação';
  String radioValue = 'Clinica';
  bool switchValue = false;
  String textFormFieldValue = '';
  String valorServico = '';
  String descricaoServico = '';
  String enderecoServico = '';

  void _mostrarCadastro(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Cadastro",
            style: TextStyle(color: Color.fromARGB(255, 71, 201, 11)),
          ),
          content: Container(
            width: double.maxFinite,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    "Nome",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        textFormFieldValue = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Nome'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Tipo",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Clínica'),
                          value: 'clinica',
                          groupValue: radioValue,
                          onChanged: (value) {
                            setState(() {
                              radioValue = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('PetShop'),
                          value: 'petshop',
                          groupValue: radioValue,
                          onChanged: (value) {
                            setState(() {
                              radioValue = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Serviço",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: <String>['Vacinação', 'Banho', 'Tosa', 'Castração']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Valor do Serviço",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        valorServico = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Valor do Serviço'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Descrição do Serviço",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        descricaoServico = value;
                      });
                    },
                    decoration:
                        InputDecoration(labelText: 'Descrição do Serviço'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Endereço do Serviço",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        enderecoServico = value;
                      });
                    },
                    decoration:
                        InputDecoration(labelText: 'Endereço do Serviço'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Ativar notificações",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Switch(
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                        ),
                        Text("Ativar notificações"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Aceitar termos e condições",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          },
                        ),
                        Text("Aceitar os termos e condições"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Fechar", style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                // Realize alguma ação com os valores do formulário aqui
                print("Nome: $textFormFieldValue");
                print("Tipo: $radioValue");
                print("Serviço: $dropdownValue");
                print("Ativar notificações: $switchValue");
                print("Aceitar termos e condições: $checkBoxValue");
                print("Valor do Serviço: $valorServico");
                print("Descrição do Serviço: $descricaoServico");
                print("Endereço do Serviço: $enderecoServico");
                Navigator.of(context).pop();
              },
              child: Text("Enviar", style: TextStyle(color: Colors.green)),
            ),
          ],
        );
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
            _mostrarCadastro(context);
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
              style: TextStyle(fontSize: 20),
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
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
