import 'package:faltas/models/models.dart';
import 'package:faltas/ui/components/components.dart';
import 'package:faltas/ui/pages/pages.dart';
import 'package:flutter/material.dart';

class ListaEmissora extends StatelessWidget {
  final List<Emissora> lista;

  const ListaEmissora(this.lista, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          var gestureDetector = GestureDetector(
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Imagem(
                        lista[index].logo,
                        height: 80,
                        width: 80,
                        redonda: true
                    ),
                  ),
                  Expanded(
                    child: Text(lista[index].nome,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            onTap: () { _abrirItem(context, lista[index]); },
          );
          return gestureDetector;
        }
    );
  }

  void _abrirItem(BuildContext context, Emissora emissora) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => EmissoraPage(emissora)
    ));
  }
}