import 'package:flutter/material.dart';

class PaginaSobre extends StatefulWidget {
  @override
  _PaginaSobre createState() => _PaginaSobre();
}

class _PaginaSobre extends State<PaginaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://avatars3.githubusercontent.com/u/26981426?s=400&u=330402cc4efe681b4040431f933a5c387d6669aa&v=4'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                        text: '\nDenis Pereira Raymundo\n\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                    TextSpan(
                      text:
                        'Especialista em Desenvolvimento Web/Mobile\n'
                        'Especialista em Gestão e Manutenção de Tecnologia de Informação\n'
                        'Bacharel em Ciência da Computação\n'
                        'Licenciado em Matemática\n'
                        'Técnico em Processamento de Dados\n'
                        'Certified Delphi® Developer\n'
                        'Scrum Foundation Professional Certificate (SFPC)\n'
                        'DevOps Essentials Professional Certificate (DEPC)\n'
                        'KanBan Foundation Certificate - KIKF™\n'
                        'Professional Coach of Life\n\n'
                        'Gerente de Desenvolvimento de Sistemas na Tek-System Informática Ltda',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
