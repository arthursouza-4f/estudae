import 'package:estudae_app/app/components/drawer_component.dart';
import 'package:estudae_app/app/themes/alert_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultColorScheme = Theme.of(context).colorScheme;
    final alertColors = Theme.of(context).extension<AlertColorsExtension>()!;

    final standartWidth = MediaQuery.of(context).size.width * 0.90;

    return Scaffold(
      backgroundColor: defaultColorScheme.surface,
      appBar: AppBar(
        title: const Text('Estudaê'),
        backgroundColor: defaultColorScheme.surface,
      ),
      drawer: const DrawerComponent(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: standartWidth,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                padding: const EdgeInsets.all(15),
                height: 140,
                decoration: BoxDecoration(
                  color: defaultColorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: defaultColorScheme.primary),
                        const SizedBox(width: 15),
                        const Column(
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
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Média Total:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("8.5", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.85,
                      backgroundColor: defaultColorScheme.secondaryContainer,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(defaultColorScheme.primary),
                    ),
                  ],
                ),
              ),
              Container(
                width: standartWidth,
                constraints: const BoxConstraints(minHeight: 130),
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: defaultColorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Provas Hoje",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(DateFormat('dd/MM/yyyy').format(DateTime.now())),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 60,
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: defaultColorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: defaultColorScheme.primary,
                            child: const Icon(
                              Icons.ssid_chart_sharp,
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Column(
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
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios, size: 20),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: standartWidth,
                constraints: const BoxConstraints(minHeight: 130),
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: defaultColorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tarefas a fazer",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    // Linha vertical
                    Stack(
                      children: [
                        Positioned(
                          left: 25,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            width: 2,
                            color: const Color.fromARGB(59, 209, 209, 209),
                          ),
                        ),
                        // Lista de horários
                        const Column(
                          children: [],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: defaultColorScheme.primary,
                          foregroundColor: defaultColorScheme.onPrimary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Ver todas as tarefas"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: standartWidth,
                constraints: const BoxConstraints(minHeight: 130),
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: defaultColorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Horário de Hoje",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    // Linha vertical
                    Stack(
                      children: [
                        Positioned(
                          left: 25,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            width: 2,
                            color: const Color.fromARGB(59, 209, 209, 209),
                          ),
                        ),
                        // Lista de horários
                        const Column(
                          children: [],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: defaultColorScheme.primary,
                          foregroundColor: defaultColorScheme.onPrimary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Ver horário completo"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: standartWidth,
                constraints: const BoxConstraints(minHeight: 180),
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: defaultColorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Materias em alerta",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text("Diciplinas abaixo de 6.0"),
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
                          const Row(
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
                          const SizedBox(height: 10),
                          Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              color: alertColors.alertDangerTransparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Recuperação",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: alertColors.alertDanger,
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
        ),
      ),
    );
  }
}
