import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:yoou/login_page.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),

      backgroundColor: Colors.white, // cor da tela toda
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 2, 82), // cor do item superior
        //A parte superior da tela
        title: const Text(
          'YooubooK',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'OleoScript',
          ),
        ), //Nome da logo
        actions: [
          //ações para os botões superiores dentro de cada ícone
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),

      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SpeedDial(
          icon: Icons.camera_alt,
          backgroundColor: Color.fromARGB(255, 11, 73, 121),
          //animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
                child: Icon(Icons.camera_enhance),
                label: 'Tirar foto',
                onTap: () {}),
            SpeedDialChild(
                child: Icon(Icons.video_camera_front),
                label: 'Gravar video',
                onTap: () {}),
            SpeedDialChild(
                child: Icon(Icons.upload),
                label: 'Carregar foto ou video',
                onTap: () {}),
            SpeedDialChild(
                child: Icon(Icons.share), label: 'Compartilhar', onTap: () {}),
          ]
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Color.fromARGB(255, 1, 2, 82),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 24),
                  IconButton(
                    icon: Icon(Icons.video_call, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.person, color: Colors.white),
                    onPressed: () {},
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildMeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildMeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  color: Colors.blue,
                ),
                title: const Text('Inicio'),
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: ((context) => const PaginaInicial())))),
            ListTile(
              leading: const Icon(Icons.favorite_border, color: Colors.blue),
              title: const Text('Favoritos'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.camera, color: Colors.blue),
              title: const Text('Minhas fotos'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.follow_the_signs, color: Colors.blue),
              title: const Text('Seguir pessoas'),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.update_rounded, color: Colors.blue),
              title: const Text('Atualizações'),
              onTap: () {},
            ),
            ListTile(
                leading: const Icon(Icons.exit_to_app, color: Colors.red),
                title: const Text('Sair'),
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: ((context) => const LoginPage()))))
          ],
        ),
      );
}
