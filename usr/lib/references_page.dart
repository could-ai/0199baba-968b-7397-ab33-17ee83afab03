import 'package:flutter/material.dart';

class ReferencesPage extends StatelessWidget {
  const ReferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> references = [
      {
        'title': 'الأورجانون الجديد (Novum Organum)',
        'author': 'فرانسيس بيكون',
        'description': 'يعتبر من الأعمال المؤسسة للمنهج التجريبي الحديث (الاستقراء).',
      },
      {
        'title': 'بنية الثورات العلمية (The Structure of Scientific Revolutions)',
        'author': 'توماس كون',
        'description': 'يقدم مفهوم "البارادايم" أو "النموذج الإرشادي" وكيفية حدوث التحولات الكبرى في العلم.',
      },
      {
        'title': 'منطق الكشف العلمي (The Logic of Scientific Discovery)',
        'author': 'كارل بوبر',
        'description': 'يطرح معيار "القابلية للتكذيب" كخط فاصل بين العلم واللاعلم.',
      },
      {
        'title': 'مقدمة في فلسفة العلوم',
        'author': 'د. يمنى طريف الخولي',
        'description': 'مرجع باللغة العربية يقدم نظرة شاملة على تطور فلسفة العلوم ومناهج البحث.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('المراجع والمصادر'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: references.length,
        itemBuilder: (context, index) {
          final reference = references[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                reference['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4.0),
                  Text('المؤلف: ${reference['author']}'),
                  const SizedBox(height: 8.0),
                  Text(reference['description']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
