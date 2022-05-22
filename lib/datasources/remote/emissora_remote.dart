import 'package:faltas/constantes.dart';
import 'package:faltas/infra/http/http.dart';
import 'package:faltas/models/models.dart';

class EmissoraRemote {
  final _link = '${linkApiEmissoras}/GetEmissora';
  final _clienteHttp = ClienteHttp();

  Future<List<Emissora>> get() async {
    final lista = await _clienteHttp.getJson(_link);
    return lista.map((e) => Emissora.fromMap(e)).toList();
  }
}