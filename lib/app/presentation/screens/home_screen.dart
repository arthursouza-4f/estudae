import 'package:estudae_app/app/themes/alert_extension.dart';
import 'package:estudae_app/app/themes/color_base_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorBaseExtension>()!;
    final alertColors = Theme.of(context).extension<AlertColorsExtension>()!;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        title: const Text('Estudaê'),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(color: colors.primary),
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
                        leading: const Icon(Icons.calendar_today),
                        title: const Text('Horários'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.assignment),
                        title: const Text('Adicionar prova'),
                        onTap: () {},
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
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 25),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Olá João',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('6 Semestre - Engenharia de Software'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Média Total:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("8.5", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(
                  value: 0.85,
                  backgroundColor: colors.backgroundGrey,
                  valueColor: AlwaysStoppedAnimation<Color>(colors.primary!),
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 130),
            margin: const EdgeInsets.only(left: 15, right: 15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Provas Hoje",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat('dd/MM/yyyy').format(DateTime.now())),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(59, 209, 209, 209),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: colors.primary,
                        child: Icon(
                          Icons.ssid_chart_sharp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Matemática",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("10:00 - Sala B"),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 20),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tarefas a fazer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                // Linha vertical
                Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 2,
                        color: Color.fromARGB(59, 209, 209, 209),
                      ),
                    ),
                    // Lista de horários
                    Column(children: [
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Ver todas as tarefas"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Horário de Hoje",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                // Linha vertical
                Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 2,
                        color: Color.fromARGB(59, 209, 209, 209),
                      ),
                    ),
                    // Lista de horários
                    Column(children: [
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Ver horário completo"),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 180),
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Materias em alerta",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("Diciplinas abaixo de 6.0"),

                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10),
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(59, 209, 209, 209),
                    border: Border(
                      left: BorderSide(
                        color: alertColors.alertDanger!,
                        width: 6,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Matemática",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "5.2",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          color: alertColors.alertDangerTransparent!,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Recuperação",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: alertColors.alertDanger!,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
