import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            title: Text('WhatsApp'),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              PopupMenuButton(onSelected: (value) {
                print(value);
              }, itemBuilder: (_) {
                return [
                  PopupMenuItem(
                    child: Text('Novo grupo'),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text('Nova Transmisão'),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text('WhatsApp Web'),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text('Mensagens favoritas'),
                    value: 4,
                  ),
                  PopupMenuItem(
                    child: Text('Configurações'),
                    value: 5,
                  ),
                ];
              })
            ],
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: <Widget>[
                  Tab(
                    text: 'CONVERSAS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CHAMADAS',
                  ),
                ])),
        body: TabBarView(
          children: <Widget>[
            Text('Page Conversas'),
            Text('Page Status'),
            Text('Page Chamada')
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onPressed: () {}),
      ),
    );
  }
}
