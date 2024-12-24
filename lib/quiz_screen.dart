import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Pertanyaan
            const Text(
              'Manakah dari widget berikut yang digunakan untuk membuat daftar scrollable di Flutter?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Pilihan jawaban
            ElevatedButton(
              onPressed: () {
                // Logika jika jawaban dipilih
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Jawaban Salah'),
                    content: const Text('Coba lagi!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
               
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('stack'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Logika jika jawaban benar
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Jawaban Benar!'),
                    content: const Text('ListView adalah widget yang digunakan untuk membuat daftar scrollable di Flutter'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Lanjut'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
               
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('ListView'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Logika jika jawaban dipilih
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Jawaban Salah'),
                    content: const Text('Coba lagi!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
          
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('Container'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Logika jika jawaban dipilih
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Jawaban Salah'),
                    content: const Text('Coba lagi!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
               
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('SizedBox'),
            ),
          ],
        ),
),
);
}
}
