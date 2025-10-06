import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/research_stage.dart';
import 'package:couldai_user_app/references_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ResearchStage> stages = [
      ResearchStage(
        title: 'المرحلة التأملية الفلسفية (العصور القديمة والوسطى)',
        description: 'اعتمد البحث في هذه المرحلة على التأمل الفلسفي والمنطق الاستنباطي دون الاعتماد على التجربة المنهجية. كان الهدف هو فهم الكون من خلال العقل والتفكير المجرد. من أبرز رواد هذه المرحلة أرسطو وأفلاطون.',
      ),
      ResearchStage(
        title: 'مرحلة التجربة والملاحظة (عصر النهضة)',
        description: 'بدأت هذه المرحلة مع عصر النهضة الأوروبية، حيث تحول التركيز نحو الملاحظة المباشرة والتجربة. تم التأكيد على أهمية جمع البيانات من الواقع لاختبار الفرضيات. يعتبر فرانسيس بيكون وجاليليو جاليلي من أهم رواد هذا التحول.',
      ),
      ResearchStage(
        title: 'مرحلة المنهج العلمي الحديث (القرن 17 فصاعدًا)',
        description: 'شهدت هذه الفترة بلورة المنهج العلمي بشكله الحديث، الذي يجمع بين الاستقراء والاستنباط. تم وضع خطوات واضحة للبحث العلمي تبدأ بالفرضية ثم التجربة للتحقق منها والوصول إلى قوانين ونظريات. يمثل إسحاق نيوتن قمة هذا التطور.',
      ),
      ResearchStage(
        title: 'المرحلة المعاصرة (القرن 20 والحادي والعشرون)',
        description: 'تتميز هذه المرحلة بالتعقيد الشديد والتخصص الدقيق في فروع العلم. ظهرت نظريات جديدة كنظرية النسبية وميكانيكا الكم. أصبح البحث العلمي يعتمد بشكل كبير على التكنولوجيا المتقدمة والفرق البحثية متعددة التخصصات، مع التركيز على مفاهيم مثل قابلية التكذيب (كارل بوبر) والثورات العلمية (توماس كون).',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('مراحل تطور البحث العلمي'),
        actions: [
          IconButton(
            icon: const Icon(Icons.book),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Directionality(
                  textDirection: TextDirection.rtl,
                  child: ReferencesPage(),
                )),
              );
            },
            tooltip: 'المراجع',
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: stages.length,
        itemBuilder: (context, index) {
          final stage = stages[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stage.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    stage.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
