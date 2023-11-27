import 'package:flutter/material.dart';
import 'package:pet_palacy2/components/Dados_tile.dart';
import 'package:pet_palacy2/provider/Dados_provider.dart';
import 'package:pet_palacy2/routes/app_routes.dart';
import 'package:provider/provider.dart';

class DadosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dados = Provider.of<Dados_provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Diario'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.DADOS_FORM,
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => DadosTile(dados.byIndex(index)),
        itemCount: dados.count,
      ),
    );
  }
}
