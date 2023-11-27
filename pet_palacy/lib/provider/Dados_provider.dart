import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pet_palacy2/dummy_dados.dart';
import 'package:pet_palacy2/model/dados.dart';

class Dados_provider with ChangeNotifier {
  static const _baseURL = 'https://meupeso-f9e99-default-rtdb.firebaseio.com/';
  final Map<String, Dados> _items = {...DUMMY_DADOS};
  Dados_provider() {
    getData();
  }
  getData() async {
    final response = await get(Uri.parse("$_baseURL/dados.json"));
    final data = json.decode(response.body) as Map<String, dynamic>;

    _items.clear();

    data.forEach((key, value) {
      Dados dados = Dados(
        id: key,
        titulo: value['titulo'],
        eventoDoDia: value['eventoDoDia'],
        data: value['data'],
        descricao: value['descricao'],
        nota: value['nota'],
      );

      _items[key] = dados;
      notifyListeners();
    });
  }

  int get count {
    return _items.length;
  }

  Dados byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Dados dados) async {
    if (dados == null) {
      return;
    }

    if (dados.id != null && _items.containsKey(dados.id)) {
      print("object");
      final response = await patch(
        Uri.parse("$_baseURL/dados/${dados.id}.json"),
        body: json.encode({
          'titulo': dados.titulo,
          'eventoDoDia': dados.eventoDoDia,
          'data': dados.data,
          'descricao': dados.descricao,
          'nota': dados.nota,
        }),
      );

      _items.update(
          dados.id as String,
          (_) => Dados(
              id: dados.id,
              titulo: dados.titulo,
              eventoDoDia: dados.eventoDoDia,
              data: dados.data,
              descricao: dados.descricao,
              nota: dados.nota));
    } else {
      final response = await post(
        Uri.parse("$_baseURL/dados.json"),
        body: json.encode({
          'titulo': dados.titulo,
          'eventoDoDia': dados.eventoDoDia,
          'data': dados.data,
          'descricao': dados.descricao,
          'nota': dados.nota,
        }),
      );
      final id = json.decode(response.body)['name'];
      _items.putIfAbsent(
        id,
        () => Dados(
            id: id,
              titulo: dados.titulo,
              eventoDoDia: dados.eventoDoDia,
              data: dados.data,
              descricao: dados.descricao,
              nota: dados.nota),
      );
    }

    notifyListeners();
  }

  void remove(Dados dados) {
    if (dados != null && dados.id != null) {
      _items.remove(dados.id);
      delete(Uri.parse("$_baseURL/dados/${dados.id}.json"));
      notifyListeners();
    }
  }
}
