import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            ]));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 49);
}
