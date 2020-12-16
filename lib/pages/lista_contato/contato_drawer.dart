import 'package:contato_form/pages/novo_contato/new_contato_page.dart';
import 'package:contato_form/pages/sobre/sobre.dart';
import 'package:flutter/material.dart';

import 'list_contato_page.dart';

class ContatoDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('denisuba@gmail.com'),
            accountName: Text('Denis'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "D",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          ListTile(
            title: Text('Novo Contato'),
            onTap: () => sendTo(context, NewContatoPage()),
          ),
          ListTile(
            title: Text('Contatos'),
            onTap: () => sendTo(context, ListContatoPage()),
          ),
          ListTile(
            title: Text('Sobre'),
            onTap: () => sendTo(context, PaginaSobre()),
          ),
        ],
      ),
    );
  }

  sendTo(BuildContext context, Widget page) {
    Navigator.of(context).pop();
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(builder: (_) => page), ModalRoute.withName("/"));
  }

}
