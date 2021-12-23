import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            _DrawerHeader(),
            ListTile(
                leading: const Icon(
                  Icons.settings_outlined,
                ),
                title: Text("Settings"),
                onTap: () => {Navigator.pop(context), print("setting")})
          ],
        ),
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Text("Cabecera"),
      ),
    );
  }
}
