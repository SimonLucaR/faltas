import 'package:faltas/models/models.dart';
import 'package:faltas/ui/components/components.dart';
import 'package:flutter/material.dart';

class EmissoraPage extends StatelessWidget {
  final Emissora emissora;

  const EmissoraPage(this.emissora, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(emissora.nome),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Imagem(emissora.logo),
        ],
      ),
    );
  }
}