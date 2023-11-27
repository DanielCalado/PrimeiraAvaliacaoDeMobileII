import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_palacy2/model/dados.dart';
import 'package:pet_palacy2/provider/Dados_provider.dart';
import 'package:provider/provider.dart';

class DadosForm extends StatefulWidget {
  @override
  _DadosFormState createState() => _DadosFormState();
}

class _DadosFormState extends State<DadosForm> {
  final _form = GlobalKey<FormState>();
  final Map<String, dynamic> _formData = {};

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _formData['data'] ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _formData['data']) {
      setState(() {
        _formData['data'] = picked;
      });
    }
  }

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
        title: Text('Adicionar'),
        backgroundColor: Colors.blue, 
        actions: <Widget>[
          IconButton(
            onPressed: () {
              if (_form.currentState?.validate() ?? false) {
                _form.currentState?.save();
                Provider.of<Dados_provider>(context, listen: false).put(Dados(
                  id: _formData['id'].toString(),
                  titulo: _formData['titulo'] as String,
                  eventoDoDia: _formData['eventoDoDia'],
                  data: _formData['data'].toString(),
                  descricao: _formData['descricao'],
                  nota: _formData['nota'],
                ));
                Navigator.of(context).pop();
              }
            },
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _formData['titulo'],
                decoration: InputDecoration(
                  labelText: 'Titulo',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                ),
                onSaved: (value) => _formData['titulo'] = value!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um título.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                initialValue: _formData['eventoDoDia'],
                decoration: InputDecoration(
                  labelText: 'Evento do Dia',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                ),
                onSaved: (value) => _formData['eventoDoDia'] = value,
                keyboardType: TextInputType.number,
                validator: (value) {
                
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                readOnly: true,
                onTap: () => _selectDate(context),
                decoration: InputDecoration(
                  labelText: 'Data',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                ),
                controller: TextEditingController(
                  text: _formData['data'] != null
                      ? DateFormat("dd/MM/yyyy").format(DateTime.parse(_formData['data'].toString()))
                      : '',
                ),
                validator: (value) {
                  if (_formData['data'] == null) {
                    return 'Por favor, insira uma data válida.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                initialValue: _formData['descricao'],
                decoration: InputDecoration(
                  labelText: 'Descrição',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                ),
                onSaved: (value) => _formData['descricao'] = value,
                maxLines: 3,
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                initialValue: _formData['nota'].toString(),
                decoration: InputDecoration(
                  labelText: 'Nota',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                ),
                onSaved: (value) => _formData['nota'] = int.parse(value!),
                keyboardType: TextInputType.number,
                validator: (value) {
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
