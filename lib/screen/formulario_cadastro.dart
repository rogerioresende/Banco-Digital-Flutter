import 'package:flutter_alfabank/modules/cadastro.dart';
import 'package:flutter/material.dart';

import '../components/editor.dart';
import 'confirmar_cadastro.dart';

class FormularioCadastro extends StatelessWidget {

  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoCpf = TextEditingController();
  final TextEditingController _controladorCampoEmail = TextEditingController();
  final TextEditingController _controladorCampoTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                controller: this._controladorCampoNome,
                rotulo: "Nome",
                dica: "Rogério Resende",
                tipoInput: TextInputType.text,
              ),
              Editor(
                controller: this._controladorCampoCpf,
                rotulo: "CPF",
                dica: "000.000.000.00",
                tipoInput: TextInputType.number,
              ),
              Editor(
                controller: this._controladorCampoEmail,
                rotulo: "E-mail",
                dica: "rogeriord@gmail.com",
                tipoInput: TextInputType.text,
              ),
              Editor(
                controller: this._controladorCampoTelefone,
                rotulo: "Telefone",
                dica: "(00)0000-0000",
                tipoInput: TextInputType.number,
              ),
              RaisedButton(
                onPressed: () {
                  var nome = this._controladorCampoNome.text;
                  var cpf = this._controladorCampoCpf.text;
                  var email = this._controladorCampoTelefone.text;
                  var telefone = this._controladorCampoTelefone.text;

                  Cadastro cadastro = Cadastro(nome, cpf, email, telefone);

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ConfirmarCadastro(cadastro);
                      })
                  );
                },
                child: Text("Proximo"),
              ),
            ],
          ),
        ));
  }
}