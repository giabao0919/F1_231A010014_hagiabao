import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _likes = 3;

  void _increase() => setState(() => _likes++);

  void _decrease() => setState(() {
    if (_likes > 0) _likes--;
  });

  void _reset() => setState(() => _likes = 0);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final likeColor = _likes >= 10 ? Colors.red : scheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab F1 – Hồ sơ của tôi'),
        backgroundColor: scheme.primaryContainer,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ProfileCard(
                name: 'Hà Gia Bảo',
                studentId: '231A010014',
                className: 'Lớp CNTT – LTĐT',
              ),
              const SizedBox(height: 24),
              Text(
                'Lượt thích: $_likes',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: likeColor,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filledTonal(
                    onPressed: _decrease,
                    icon: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 12),
                  FilledButton.icon(
                    onPressed: _increase,
                    icon: const Icon(Icons.favorite),
                    label: const Text('Thích'),
                  ),
                  const SizedBox(width: 12),
                  IconButton.outlined(
                    onPressed: _reset,
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    required this.studentId,
    required this.className,
  });

  final String name;
  final String studentId;
  final String className;

  @override
  Widget build(BuildContext context) {
    final initial = name.trim().split(' ').last.substring(0, 1);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              child: Text(initial, style: const TextStyle(fontSize: 32)),
            ),
            const SizedBox(height: 12),
            Text(name, style: Theme.of(context).textTheme.titleLarge),
            Text('MSSV: $studentId'),
            Text(className),
          ],
        ),
      ),
    );
  }
}
