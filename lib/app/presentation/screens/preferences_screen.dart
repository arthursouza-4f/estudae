import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:estudae_app/app/providers/theme_provider.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final defaultColorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: defaultColorScheme.surface,
      appBar: AppBar(
        title: const Text('Preferências', ),
        backgroundColor: defaultColorScheme.surface,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.dark_mode,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Modo Escuro',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SegmentedButton<ThemeMode>(
                    segments: const [
                      ButtonSegment<ThemeMode>(
                        value: ThemeMode.light,
                      
                        icon: Icon(Icons.light_mode),
                        label: Text('Claro'),
                      ),
                      ButtonSegment<ThemeMode>(
                        value: ThemeMode.dark,
                        icon: Icon(Icons.dark_mode),
                        label: Text('Escuro'),
                      ),
                    ],
                    selected: {themeProvider.themeMode},
                    onSelectionChanged: (Set<ThemeMode> newSelection) {
                      themeProvider.setThemeMode(newSelection.first);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
