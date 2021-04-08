import 'package:banco_digital/modules/transferencia.dart';
import 'package:flutter/material.dart';


class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  ItemTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text("R\$ ${this.transferencia.valor.toString()}"),
        subtitle: Text("Conta: ${this.transferencia.conta}"),
      ),
    );
  }
}