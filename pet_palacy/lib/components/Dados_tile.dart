import 'package:flutter/material.dart';
import 'package:pet_palacy2/model/dados.dart';
import 'package:pet_palacy2/provider/Dados_provider.dart';
import 'package:pet_palacy2/routes/app_routes.dart';
import 'package:provider/provider.dart';

class DadosTile extends StatelessWidget {
  final Dados dados;

  DadosTile(this.dados);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        dados.titulo.toString(),
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      subtitle: Text(
        dados.eventoDoDia.toString(),
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[600], 
        ),
      ),
      trailing: Container(
        width: 150,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.DADOS_INFO,
                  arguments: dados,
                );
              },
              color: Colors.blue, 
            ),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.DADOS_FORM,
                  arguments: dados,
                );
              },
              color: Colors.orange, 
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                Provider.of<Dados_provider>(context, listen: false).remove(dados);
              },
              color: Colors.red, 
            ),
          ],
        ),
      ),
    );
  }
}
