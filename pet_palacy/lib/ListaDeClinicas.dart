import 'package:flutter/material.dart';

class Clinica {
  String _nome;
  String _telefone;
  List<Endereco> _endereco;
  List<Servicos> _servicos;

  Clinica(this._nome, this._telefone, this._endereco, this._servicos);

  String get nome => _nome;
  String get telefone => _telefone;
  List<Endereco> get endereco => _endereco;
  List<Servicos> get servicos => _servicos;
}

class Endereco {
  String _rua;
  String _cidade;
  String _bairro;
  String _estado;
  String _cep;
  int _numero;

  Endereco(this._rua, this._bairro, this._cidade, this._estado, this._cep,
      this._numero);

  String get rua => _rua;
  String get cidade => _cidade;
  String get bairro => _bairro;
  String get estado => _estado;
  String get cep => _cep;
  int get numero => _numero;
}

class Servicos {
  String _nome;
  double _valor;
  String _descricao;
  String _imagem;

  Servicos(this._nome, this._valor, this._descricao, this._imagem);

  String get nome => _nome;
  double get valor => _valor;
  String get descricao => _descricao;
  String get imagem => _imagem;
}

List<Clinica> _clinicas = [
  Clinica("Pet Lab", "8798134-2345", [
    Endereco(
        "São José", "Novo Horizonte", "Brejão", "São Paulo", "55433-22", 33)
  ], [
    Servicos("Banho", 20.55, "banho com shampoo", "assets/images/banho.jpg")
  ]),
  Clinica("Pets R Us", "9876543-1234", [
    Endereco("Rua dos Animais", "Bairro dos Pets", "Petrópolis",
        "Rio de Janeiro", "12345-678", 25)
  ], [
    Servicos("Consulta Veterinária", 50.00, "exame de rotina",
        "assets/images/ConsultaVeterinaria.jpg"),
    Servicos("Banho e Tosa", 35.99, "banho com tosa higiênica",
        "assets/images/banhoetosa.jpg")
  ]),
  Clinica("CliniCão", "5554321-5678", [
    Endereco("Avenida dos Cachorros", "Cão Feliz", "Dogville", "São Paulo",
        "98765-432", 40)
  ], [
    Servicos(
        "Vacinação", 30.00, "vacina múltipla", "assets/images/vacinacao.jpg"),
    Servicos("Cirurgia", 150.00, "castração", "assets/images/vacinacao.jpg")
  ]),
  Clinica("VetPet", "1234567-8901", [
    Endereco("Rua dos Gatos", "Felizville", "Gatolandia", "Rio de Janeiro",
        "56789-012", 18)
  ], [
    Servicos("Consulta Geral", 40.00, "consulta de rotina",
        "assets/images/vacinacao.jpg"),
    Servicos("Tosa", 25.50, "tosa completa", "assets/images/banhoetosa.jpg")
  ]),
  Clinica("Animal Care", "9876543-2109", [
    Endereco("Avenida dos Animais", "Amigão", "Bicholândia", "São Paulo",
        "34567-890", 30)
  ], [
    Servicos("Vacinação", 35.00, "vacina antirrábica",
        "assets/images/vacinacao.jpg"),
    Servicos(
        "Banho e Tosa", 40.00, "banho e tosa", "assets/images/banhoetosa.jpg")
  ]),
  Clinica("Pet Clinic", "8765432-1098", [
    Endereco("Rua dos Amigos", "Amigão", "Bicholândia", "Rio de Janeiro",
        "67890-123", 22)
  ], [
    Servicos("Consulta Veterinária", 45.00, "consulta de emergência",
        "assets/images/vacinacao.jpg"),
    Servicos(
        "Banho", 30.00, "banho com hidratação", "assets/images/banhoetosa.jpg")
  ]),
  Clinica("Clínica Animal", "9876543-5678", [
    Endereco("Avenida dos Bichos", "Petville", "Petland", "São Paulo",
        "45678-901", 35)
  ], [
    Servicos("Vacinação", 30.00, "vacina V8", "assets/images/vacinacao.jpg"),
    Servicos("Cirurgia", 120.00, "cirurgia de emergência",
        "assets/images/vacinacao.jpg")
  ]),
  Clinica("VetCenter", "8765432-3456", [
    Endereco(
        "Rua dos Cães", "Amigão", "Bicholândia", "São Paulo", "78901-234", 28)
  ], [
    Servicos("Consulta Geral", 35.00, "consulta de acompanhamento",
        "assets/images/vacinacao.jpg"),
    Servicos("Tosa", 20.00, "tosa higiênica", "assets/images/banhoetosa.jpg")
  ]),
  Clinica("Animal Health", "9876543-4321", [
    Endereco("Avenida dos Felinos", "Gatolandia", "Catville", "Rio de Janeiro",
        "89012-345", 27)
  ], [
    Servicos("Banho e Tosa", 45.00, "banho com tosa completa",
        "assets/images/banhoetosa.jpg"),
    Servicos("Consulta Veterinária", 55.00, "consulta especializada",
        "assets/images/vacinacao.jpg")
  ]),
  Clinica("VetPlus", "8765432-6789", [
    Endereco("Rua dos Pássaros", "Voandoville", "Aviário", "São Paulo",
        "90123-456", 32)
  ], [
    Servicos("Consulta Geral", 25.00, "consulta de prevenção",
        "assets/images/vacinacao.jpg"),
    Servicos("Cirurgia", 180.00, "cirurgia de grande porte",
        "assets/images/vacinacao.jpg")
  ]),
  Clinica("PetCure", "9876543-7890", [
    Endereco("Avenida dos Roedores", "Ratinhos", "Ratolândia", "Rio de Janeiro",
        "12345-678", 20)
  ], [
    Servicos(
        "Vacinação", 25.00, "vacina múltipla", "assets/images/vacinacao.jpg"),
    Servicos(
        "Banho", 25.00, "banho com secagem", "assets/images/banhoetosa.jpg")
  ]),
  Clinica("Cães e Gatos", "8765432-1234", [
    Endereco(
        "Rua dos Animais", "Amigão", "Petlandia", "São Paulo", "23456-789", 38)
  ], [
    Servicos("Consulta Geral", 30.00, "consulta pediátrica",
        "assets/images/vacinacao.jpg"),
    Servicos("Tosa", 22.00, "tosa completa", "assets/images/banhoetosa.jpg")
  ]),
  Clinica("Furry Friends", "9876543-5678", [
    Endereco("Avenida dos Amigos", "Amigão", "Petlandia", "Rio de Janeiro",
        "56789-012", 29)
  ], [
    Servicos("Banho e Tosa", 38.00, "banho e tosa com hidratação",
        "assets/images/banhoetosa.jpg"),
    Servicos("Consulta Veterinária", 42.00, "consulta geriátrica",
        "assets/images/vacinacao.jpg")
  ]),
];

class ListaDeClinicas extends StatelessWidget {
  void navigateToServico(BuildContext context, Clinica clinica) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListaDeServicos(clinica)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _clinicas.length,
      itemBuilder: (context, i) {
        var contato = _clinicas[i];
        return Container(
          color: i % 2 == 0 ? Color.fromARGB(255, 240, 241, 241) : Colors.white,
          child: ListTile(
            title: Text(_clinicas[i]._nome),
            subtitle: Text(_clinicas[i]._telefone),
            trailing: Container(
              width: 50,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {
                      navigateToServico(context, _clinicas[i]);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ListaDeServicos extends StatelessWidget {
  Clinica _clinica;
  ListaDeServicos(this._clinica);

  void navigateToServicoInfo(BuildContext context, Servicos servico) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ServicosInfo(servico)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 10, 107, 18),
          title: Text("Serviços"),
          titleTextStyle: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(_clinica._nome +
                  "\nEndereço\n" +
                  "Rua: " +
                  _clinica._endereco[0]._rua +
                  "\nBairro: " +
                  _clinica._endereco[0]._bairro),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: _clinica._servicos.length,
              itemBuilder: (context, i) {
                return Container(
                  color: i % 2 == 0
                      ? Color.fromARGB(255, 240, 241, 241)
                      : Colors.white,
                  child: ListTile(
                    title: Text(_clinica._servicos[i]._nome),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_clinica._servicos[i]._descricao),
                          Text("Valor: " +
                              _clinica._servicos[i]._valor.toString())
                        ]),
                    trailing: Container(
                      width: 50,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed: () {
                              navigateToServicoInfo(
                                  context, _clinica._servicos[i]);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ));
  }
}

class ServicosInfo extends StatelessWidget {
  Servicos _servico;
  ServicosInfo(this._servico);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 107, 18),
        title: Text(
          "Serviços",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Card(
                  color: Colors.amber,
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        new Image.asset(_servico._imagem),
                        Text(
                          _servico._nome +
                              "\n" +
                              _servico._valor.toString() +
                              "\n" +
                              _servico._descricao,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
