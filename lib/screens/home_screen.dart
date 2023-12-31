import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/tryDrawer");
                  },
                  child: const Text("Drawer'i dene")),
            )
          ],
        ),
      ),
    );
  }
}
