import 'package:material_ui/material_ui.dart';
// Sesuaikan path import di bawah ini dengan lokasi model Project Anda
import 'package:myportofolio_mobile/models/project.dart';

class ProjectDetailScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(project.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Project
            Text(
              project.title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Bagian Tech Stack
            Text(
              'Tech Stack',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            _buildTechStack(context),
            const SizedBox(height: 24),

            // Bagian Deskripsi
            Text(
              'Description',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              project.description,
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  // Menampilkan techStack dalam bentuk Chip.
  // Mendukung tipe data String (dipisahkan koma) maupun List<String>.
  Widget _buildTechStack(BuildContext context) {
    final List<String> items = project.techStack is List
        ? List<String>.from(project.techStack as Iterable)
        : project.techStack
              .toString()
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList();

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: items
          .map(
            (tech) => Chip(
              label: Text(tech),
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
          )
          .toList(),
    );
  }
}
