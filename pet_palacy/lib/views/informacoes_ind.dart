import 'package:flutter/material.dart';
import 'package:pet_palacy2/model/dados.dart';

class Dados_Info extends StatelessWidget {
  final Map<String, dynamic> _formData = {};

  void _loadFormData(Dados dados) {
    _formData['id'] = dados.id;
    _formData['titulo'] = dados.titulo;
    _formData['eventoDoDia'] = dados.eventoDoDia;
    _formData['data'] = dados.data;
    _formData['descricao'] = dados.descricao;
    _formData['nota'] = dados.nota;
  }

  @override
  Widget build(BuildContext context) {
    final Object? dados = ModalRoute.of(context)!.settings.arguments;
    if (dados != null) _loadFormData(dados as Dados);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Evento'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _formData["titulo"],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, 
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Evento do Dia: ' + _formData["eventoDoDia"],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                'Data: ' + _formData["data"],
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 8),
              Text(
                'Descrição: ' + _formData["descricao"],
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green, 
                ),
                child: Center(
                  child: Text(
                    _formData["nota"].toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
