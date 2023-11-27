import 'package:flutter/material.dart';
import 'package:pet_palacy2/provider/Dados_provider.dart';
import 'package:pet_palacy2/routes/app_routes.dart';
import 'package:pet_palacy2/views/dados_form.dart';
import 'package:pet_palacy2/views/dados_list.dart';
import 'package:pet_palacy2/views/informacoes_ind.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (ctx) => Dados_provider(), 
        )
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.DADOS_FORM: (_) => DadosForm(),
        AppRoutes.HOME: (_) => DadosList(),
        AppRoutes.DADOS_INFO: (_) => Dados_Info(),
      },
      ),
    );
  }
}
