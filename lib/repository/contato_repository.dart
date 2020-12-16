import 'package:contato_form/model/contato.dart';
import 'package:contato_form/model/contato_type.dart';

class ContatoRepository {
  static List<Contato> _contatos = [];

  ContatoRepository() {
    if (_contatos.isEmpty) {
      _contatos.add(new Contato(
          nome: "Paulo Ricardo",
          telefone: "(32) 99879-8778",
          tipo: ContatoType.CELULAR,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "Danilo",
          telefone: "(32) 99879-8888",
          tipo: ContatoType.CELULAR,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "Prof.Lucas",
          telefone: "(32) 98798-7777",
          tipo: ContatoType.FAVORITO,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "Prof.Flávio",
          telefone: "(32) 3379-9999",
          tipo: ContatoType.CASA,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "Prof.Wellington",
          telefone: "(32) 3379-9999",
          tipo: ContatoType.CASA,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "Marcos",
          telefone: "(32) 98887-7777",
          tipo: ContatoType.FAVORITO,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "Jairo",
          telefone: "(32) 3661-9999",
          tipo: ContatoType.TRABALHO,
          cpf: '328.287.402-26'));

      _contatos.add(new Contato(
          nome: "IFET",
          telefone: "(32) 3344-9999",
          tipo: ContatoType.TRABALHO,
          cpf: '328.287.402-26'));
    }
  }

  findAllContatos() {
    _contatos.sort((a, b) => a.nome.compareTo(b.nome));
    return _contatos;
  }

  saveContato(Contato contato) {
    if (_contatos.contains(contato)) {
      _contatos.remove(contato);
    }
    _contatos.add(contato);
  }
}
