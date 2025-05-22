import 'package:flutter/material.dart';

class AddNewProve extends StatefulWidget {
  const AddNewProve({super.key});

  @override
  State<AddNewProve> createState() => _AddNewProveState();
}

class _AddNewProveState extends State<AddNewProve> {
  @override
  Widget build(BuildContext context) {
    final defaultColorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar Prova')),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Nome da Prova',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Data',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          // TODO: Atualizar o valor do campo
                        });
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Hora',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.access_time),
                    ),
                    readOnly: true,
                    onTap: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (pickedTime != null) {
                        setState(() {
                          // TODO: Atualizar o valor do campo
                        });
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 10),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: defaultColorScheme.primary,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: const Text("Adicionar prova"),
            ),
          ),
        ],
      ),
    );
  }
}
