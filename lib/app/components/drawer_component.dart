import 'package:estudae_app/app/presentation/screens/preferences_screen.dart';
import 'package:estudae_app/proves/presentation/add_new_prove.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultColorScheme = Theme.of(context).colorScheme;

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(color: defaultColorScheme.primary),
          ),
          SizedBox(
            height: 400,
            child: ListView(
              children: [
                ExpansionTile(
                  title: const Text('Provas'),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.school),
                      title: const Text('Notas'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.assignment),
                      title: const Text('Adicionar prova'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddNewProve(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Materias	'),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Ver todas as materias'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Adicionar materia'),
                      onTap: () {},
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Tarefas'),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Ver todas as tarefas'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Adicionar tarefa'),
                      onTap: () {},
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Configurações'),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Perfil'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Preferências'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PreferencesScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
