import 'package:flutter/material.dart';

class TryDrawer extends StatelessWidget {
  const TryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana ekran"),
      ),
      drawer: drawer(context),
      endDrawer: drawer(context),
    );
  }
}

Widget drawer(BuildContext context) {
  return Drawer(
    // Kullanıcının eğer seçenekler fazlaysa scroll yapabilmesi için ListView eklenir.
    child: ListView(
      // Önemli: ListView'den paddingleri kaldırın.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          // DrawerHeader ile Drawer'in en üst kısmına bir renk ve yazı eklenir.
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer başlığı'),
        ),
        ListTile(
          title: const Text('1. Öge'),
          onTap: () {
            // 1. Öge için fonksiyon.
          },
        ),
        ListTile(
          title: const Text('Drawer\'i kapat'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
