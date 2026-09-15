import 'package:flutter/material.dart';

void main() {
  runApp(const ClauLuxoApp());
}

const Color aqua = Color(0xFF55CFC6);
const Color aquaDark = Color(0xFF33B8AF);
const Color lavender = Color(0xFF9D7CF4);
const Color ink = Color(0xFF18233A);
const Color softBg = Color(0xFFF7F8FB);
const Color line = Color(0xFFE8EAF1);

class Appointment {
  Appointment({required this.service, required this.date, required this.time, required this.name});
  final String service;
  final DateTime date;
  final String time;
  final String name;
}

class ClauLuxoApp extends StatefulWidget {
  const ClauLuxoApp({super.key});

  @override
  State<ClauLuxoApp> createState() => _ClauLuxoAppState();
}

class _ClauLuxoAppState extends State<ClauLuxoApp> {
  int index = 0;
  Appointment? appointment;

  void openTab(int value) => setState(() => index = value);
  void saveAppointment(Appointment value) {
    setState(() {
      appointment = value;
      index = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClauLuxo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: softBg,
        colorScheme: ColorScheme.fromSeed(seedColor: aqua, brightness: Brightness.light),
        fontFamily: 'sans-serif',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(color: ink, fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(color: ink, fontWeight: FontWeight.w700),
          titleLarge: TextStyle(color: ink, fontWeight: FontWeight.w700),
          bodyLarge: TextStyle(color: ink, height: 1.45),
          bodyMedium: TextStyle(color: Color(0xFF687086), height: 1.45),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: index,
            children: [
              HomePage(onBook: () => openTab(2), onServices: () => openTab(1)),
              const ServicesPage(),
              BookingPage(onBooked: saveAppointment),
              SpacePage(appointment: appointment, onBook: () => openTab(2)),
              const ContactPage(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: openTab,
          indicatorColor: aqua.withOpacity(.16),
          backgroundColor: Colors.white,
          height: 72,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home, color: aquaDark), label: 'Accueil'),
            NavigationDestination(icon: Icon(Icons.spa_outlined), selectedIcon: Icon(Icons.spa, color: aquaDark), label: 'Soins'),
            NavigationDestination(icon: Icon(Icons.calendar_month_outlined), selectedIcon: Icon(Icons.calendar_month, color: aquaDark), label: 'Rendez-vous'),
            NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person, color: aquaDark), label: 'Mon espace'),
            NavigationDestination(icon: Icon(Icons.more_horiz), selectedIcon: Icon(Icons.more_horiz, color: aquaDark), label: 'Plus'),
          ],
        ),
      ),
    );
  }
}

class BrandHeader extends StatelessWidget {
  const BrandHeader({super.key, this.compact = false});
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/logo.svg', height: compact ? 74 : 112, fit: BoxFit.contain),
        const SizedBox(height: 8),
        Text('Centre de Luxopuncture', textAlign: TextAlign.center, style: TextStyle(fontSize: compact ? 18 : 24, fontWeight: FontWeight.w700, color: ink)),
        Text('Claudine Amerigo', style: TextStyle(fontSize: compact ? 16 : 20, color: aquaDark, fontWeight: FontWeight.w700)),
        const SizedBox(height: 3),
        const Text('Bien-être • Équilibre • Vitalité', style: TextStyle(color: aquaDark, fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.onBook, required this.onServices});
  final VoidCallback onBook;
  final VoidCallback onServices;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
      children: [
        const BrandHeader(),
        const SizedBox(height: 16),
        ClipRRect(borderRadius: BorderRadius.circular(26), child: Image.asset('assets/hero.svg', height: 190, width: double.infinity, fit: BoxFit.cover)),
        const SizedBox(height: 22),
        Text(
          'Retrouvez sommeil, sérénité et vitalité grâce à la',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'serif', fontStyle: FontStyle.italic, fontSize: 24, color: ink.withOpacity(.82), height: 1.25),
        ),
        const Text('Luxopuncture', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'serif', fontStyle: FontStyle.italic, fontSize: 31, color: aquaDark)),
        const SizedBox(height: 24),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(colors: [Color(0xFFEFFBFA), Color(0xFFF7F2FF)], begin: Alignment.topLeft, end: Alignment.bottomRight),
            border: Border.all(color: const Color(0xFFDBF1EF)),
          ),
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: const [CircleAvatar(radius: 22, backgroundColor: Colors.white, child: Icon(Icons.self_improvement, color: aquaDark)), SizedBox(width: 12), Expanded(child: Text('Une pause pour vous recentrer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: ink)))]),
              const SizedBox(height: 12),
              const Text('Un accompagnement doux et personnalisé pour retrouver équilibre, calme et vitalité.'),
              const SizedBox(height: 18),
              FilledButton.icon(
                onPressed: onBook,
                style: FilledButton.styleFrom(backgroundColor: aqua, foregroundColor: Colors.white, minimumSize: const Size.fromHeight(52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
                icon: const Icon(Icons.calendar_month),
                label: const Text('Planifier une séance', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: onServices,
                style: OutlinedButton.styleFrom(foregroundColor: lavender, side: const BorderSide(color: lavender), minimumSize: const Size.fromHeight(50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
                icon: const Icon(Icons.spa_outlined),
                label: const Text('Découvrir les soins', style: TextStyle(fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Expanded(child: MiniBenefit(icon: Icons.favorite_border, label: 'Écoute\nBienveillance')),
            SizedBox(width: 10),
            Expanded(child: MiniBenefit(icon: Icons.spa_outlined, label: 'Méthodes\ndouces')),
            SizedBox(width: 10),
            Expanded(child: MiniBenefit(icon: Icons.trending_up, label: 'Résultats\ndurables')),
          ],
        ),
        const SizedBox(height: 20),
        const QuoteCard(),
      ],
    );
  }
}

class MiniBenefit extends StatelessWidget {
  const MiniBenefit({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18), border: Border.all(color: line)),
    child: Column(children: [Icon(icon, color: lavender), const SizedBox(height: 8), Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: ink))]),
  );
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(color: const Color(0xFFFDF7F2), borderRadius: BorderRadius.circular(22)),
    child: const Text('“Prendre soin de soi, c’est déjà changer demain.”', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'serif', fontStyle: FontStyle.italic, fontSize: 19, color: Color(0xFF70637C))),
  );
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      ('Sommeil', 'Retrouvez un sommeil réparateur', Icons.nightlight_round, const Color(0xFFEAF4FF)),
      ('Stress & relaxation', 'Apaisez le mental, retrouvez la sérénité', Icons.self_improvement, const Color(0xFFFFF4E9)),
      ('Arrêt du tabac', 'Un accompagnement vers plus de liberté', Icons.eco_outlined, const Color(0xFFECF8EF)),
      ('Minceur / équilibre', 'Retrouvez votre équilibre durablement', Icons.balance, const Color(0xFFF3EEFF)),
    ];
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
      children: [
        const BrandHeader(compact: true),
        const SizedBox(height: 24),
        const Text('Nos services', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: ink)),
        const Text('Retrouvez votre équilibre naturellement.', style: TextStyle(color: Color(0xFF737B90))),
        const SizedBox(height: 16),
        ...[
          ('À propos', Icons.person_outline),
          ('La Luxopuncture', Icons.spa_outlined),
          ('Nos séances', Icons.favorite_border),
          ('Tarifs', Icons.sell_outlined),
          ('FAQ', Icons.help_outline),
        ].map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 9),
          child: Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18), side: const BorderSide(color: line)),
            child: ListTile(leading: Icon(item.$2, color: lavender), title: Text(item.$1, style: const TextStyle(fontWeight: FontWeight.w600)), trailing: const Icon(Icons.chevron_right)),
          ),
        )),
        const SizedBox(height: 16),
        const Text('Nos accompagnements', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: ink)),
        const SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: .95),
          itemCount: services.length,
          itemBuilder: (context, i) {
            final s = services[i];
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: s.$4, borderRadius: BorderRadius.circular(22)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CircleAvatar(backgroundColor: Colors.white, child: Icon(s.$3, color: i.isEven ? aquaDark : lavender)), const Spacer(), Text(s.$1, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: ink)), const SizedBox(height: 6), Text(s.$2, style: const TextStyle(fontSize: 12, color: Color(0xFF6E7486)))]),
            );
          },
        ),
        const SizedBox(height: 22),
        const PricingSection(),
        const SizedBox(height: 22),
        const FaqSection(),
      ],
    );
  }
}

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});
  static const prices = [
    ('Bilan préliminaire', 'Consultation personnalisée d’environ 1 h', '60 €'),
    ('Séance individuelle', 'Séance de luxopuncture à l’unité', '55 €'),
    ('Forfait perte de poids', 'Programme de 13 séances', '650 €'),
    ('Forfait relaxation', 'Programme de 7 séances', '350 €'),
    ('Bien-être ménopause', 'Programme de 8 séances', '400 €'),
    ('Éclat du visage', 'Programme de 8 séances', '400 €'),
    ('Arrêt du tabac', 'Programme complet de 7 séances', '350 €'),
    ('Forfait entretien', '3 séances de suivi', '150 €'),
  ];
  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text('Nos tarifs', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: ink)),
    const SizedBox(height: 6),
    const Text('Les tarifs présentés sont ceux publiés sur le site officiel.', style: TextStyle(color: Color(0xFF737B90))),
    const SizedBox(height: 12),
    ...prices.map((p) => Container(margin: const EdgeInsets.only(bottom: 8), padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: line)), child: Row(children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(p.$1, style: const TextStyle(fontWeight: FontWeight.w700, color: ink)), const SizedBox(height: 3), Text(p.$2, style: const TextStyle(fontSize: 12, color: Color(0xFF737B90)))]), Text(p.$3, style: const TextStyle(fontWeight: FontWeight.w800, color: aquaDark))])),
  ]);
}

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});
  static const items = [
    ('Qu’est-ce que la luxothérapie ?', 'Une approche de bien-être utilisant des séquences lumineuses et une stimulation visuelle douce.'),
    ('Combien de temps dure une séance ?', 'Une séance dure généralement entre 20 et 30 minutes, selon les besoins de la personne.'),
    ('La méthode est-elle douloureuse ?', 'Non, elle est présentée comme douce, non invasive et généralement bien tolérée.'),
    ('La luxothérapie remplace-t-elle un suivi médical ?', 'Non. Elle s’inscrit dans une démarche complémentaire de bien-être et ne remplace ni un avis ni un traitement médical.'),
  ];
  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text('Questions fréquentes', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: ink)),
    const SizedBox(height: 8),
    ...items.map((item) => Card(margin: const EdgeInsets.only(bottom: 6), elevation: 0, color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: const BorderSide(color: line)), child: ExpansionTile(title: Text(item.$1, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)), childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 14), children: [Align(alignment: Alignment.centerLeft, child: Text(item.$2, style: const TextStyle(color: Color(0xFF687086))))]))),
  ]);
}

class BookingPage extends StatefulWidget {
  const BookingPage({super.key, required this.onBooked});
  final ValueChanged<Appointment> onBooked;
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int step = 0;
  int dateIndex = 0;
  String selectedTime = '09:00';
  String service = 'Bilan découverte';
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();

  List<DateTime> get dates => List.generate(7, (i) => DateTime.now().add(Duration(days: i + 1)));
  final times = const ['09:00', '10:00', '11:00', '14:00', '15:00', '16:00', '17:00', '18:00'];
  final services = const ['Bilan préliminaire', 'Sommeil', 'Gestion du stress', 'Arrêt du tabac', 'Perte de poids', 'Ménopause', 'Éclat du visage'];

  @override
  void dispose() {
    name.dispose(); email.dispose(); phone.dispose(); super.dispose();
  }

  String dayLabel(DateTime d) {
    const days = ['Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam', 'Dim'];
    return days[d.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text('Planifier une séance', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700, color: ink)), Image.asset('assets/logo.svg', height: 54)]),
        const SizedBox(height: 18),
        Row(children: List.generate(3, (i) => Expanded(child: Column(children: [CircleAvatar(radius: 16, backgroundColor: i <= step ? aqua : const Color(0xFFE9ECF4), child: Text('${i + 1}', style: TextStyle(color: i <= step ? Colors.white : ink, fontWeight: FontWeight.w700))), const SizedBox(height: 6), Text(['Date & heure', 'Détails', 'Confirmation'][i], style: TextStyle(fontSize: 11, color: i == step ? aquaDark : const Color(0xFF8A90A0), fontWeight: i == step ? FontWeight.w700 : FontWeight.w500))])))),
        const SizedBox(height: 24),
        if (step == 0) _stepDate(),
        if (step == 1) _stepDetails(),
        if (step == 2) _stepConfirm(),
      ],
    );
  }

  Widget _stepDate() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Choisissez votre séance', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
      const SizedBox(height: 8),
      DropdownButtonFormField<String>(value: service, items: services.map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(), onChanged: (v) => setState(() => service = v ?? service), decoration: inputDecoration()),
      const SizedBox(height: 18),
      const Text('Sélectionnez une date', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
      const SizedBox(height: 10),
      SizedBox(height: 82, child: ListView.separated(scrollDirection: Axis.horizontal, itemCount: dates.length, separatorBuilder: (_, __) => const SizedBox(width: 8), itemBuilder: (context, i) { final d = dates[i]; final active = i == dateIndex; return InkWell(onTap: () => setState(() => dateIndex = i), borderRadius: BorderRadius.circular(16), child: Container(width: 62, padding: const EdgeInsets.symmetric(vertical: 10), decoration: BoxDecoration(color: active ? aqua : Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: active ? aqua : line)), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text(dayLabel(d), style: TextStyle(color: active ? Colors.white : const Color(0xFF7C8292), fontSize: 12)), const SizedBox(height: 5), Text('${d.day}', style: TextStyle(color: active ? Colors.white : ink, fontSize: 19, fontWeight: FontWeight.w700))]))); })),
      const SizedBox(height: 20),
      const Text('Choisissez un créneau', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
      const SizedBox(height: 10),
      Wrap(spacing: 9, runSpacing: 9, children: times.map((t) { final active = t == selectedTime; return ChoiceChip(label: Text(t), selected: active, onSelected: (_) => setState(() => selectedTime = t), selectedColor: aqua, backgroundColor: Colors.white, side: BorderSide(color: active ? aqua : line), labelStyle: TextStyle(color: active ? Colors.white : ink, fontWeight: FontWeight.w600)); }).toList()),
      const SizedBox(height: 24),
      FilledButton(onPressed: () => setState(() => step = 1), style: primaryButton(), child: const Text('Continuer')),
    ]);
  }

  Widget _stepDetails() => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text('Vos coordonnées', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
    const SizedBox(height: 6),
    const Text('Ces données restent uniquement dans cette session de démonstration.', style: TextStyle(color: Color(0xFF747B8E))),
    const SizedBox(height: 18),
    TextField(controller: name, decoration: inputDecoration(label: 'Nom et prénom')),
    const SizedBox(height: 12),
    TextField(controller: email, keyboardType: TextInputType.emailAddress, decoration: inputDecoration(label: 'E-mail')),
    const SizedBox(height: 12),
    TextField(controller: phone, keyboardType: TextInputType.phone, decoration: inputDecoration(label: 'Téléphone')),
    const SizedBox(height: 22),
    Row(children: [Expanded(child: OutlinedButton(onPressed: () => setState(() => step = 0), style: secondaryButton(), child: const Text('Retour'))), const SizedBox(width: 10), Expanded(child: FilledButton(onPressed: () { if (name.text.trim().isEmpty) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Veuillez renseigner votre nom.'))); return; } setState(() => step = 2); }, style: primaryButton(), child: const Text('Continuer')))]),
  ]);

  Widget _stepConfirm() {
    final d = dates[dateIndex];
    return Column(children: [
      Container(width: double.infinity, padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), border: Border.all(color: line)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Row(children: [CircleAvatar(backgroundColor: Color(0xFFE6FAF8), child: Icon(Icons.check, color: aquaDark)), SizedBox(width: 12), Text('Vérifiez votre rendez-vous', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18))]), const SizedBox(height: 18), detailLine(Icons.spa_outlined, 'Séance', service), detailLine(Icons.person_outline, 'Praticienne', 'Claudine Amerigo'), detailLine(Icons.calendar_today_outlined, 'Date', '${dayLabel(d)} ${d.day}/${d.month}/${d.year}'), detailLine(Icons.schedule, 'Heure', selectedTime), detailLine(Icons.person, 'Pour', name.text.trim())])),
      const SizedBox(height: 18),
      const Text('Prototype V0 : aucune réservation réelle n’est envoyée au centre.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF777E91), fontSize: 12)),
      const SizedBox(height: 18),
      FilledButton(onPressed: () { widget.onBooked(Appointment(service: service, date: d, time: selectedTime, name: name.text.trim())); ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Rendez-vous de démonstration enregistré.'))); setState(() => step = 0); }, style: primaryButton(), child: const Text('Confirmer le rendez-vous')),
      const SizedBox(height: 10),
      OutlinedButton(onPressed: () => setState(() => step = 1), style: secondaryButton(), child: const Text('Modifier')),
    ]);
  }

  InputDecoration inputDecoration({String? label}) => InputDecoration(labelText: label, filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: line)), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: line)));
  ButtonStyle primaryButton() => FilledButton.styleFrom(backgroundColor: aqua, foregroundColor: Colors.white, minimumSize: const Size.fromHeight(52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)));
  ButtonStyle secondaryButton() => OutlinedButton.styleFrom(foregroundColor: lavender, minimumSize: const Size.fromHeight(52), side: const BorderSide(color: lavender), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)));
}

Widget detailLine(IconData icon, String label, String value) => Padding(padding: const EdgeInsets.only(bottom: 13), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(icon, color: lavender, size: 20), const SizedBox(width: 10), SizedBox(width: 88, child: Text(label, style: const TextStyle(color: Color(0xFF7A8191), fontSize: 12))), Expanded(child: Text(value, style: const TextStyle(fontWeight: FontWeight.w600, color: ink))) ]));

class SpacePage extends StatelessWidget {
  const SpacePage({super.key, required this.appointment, required this.onBook});
  final Appointment? appointment;
  final VoidCallback onBook;

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.fromLTRB(20, 20, 20, 24), children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text('Mon espace', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: ink)), IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined))]),
      const SizedBox(height: 14),
      Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: line)), child: const Row(children: [CircleAvatar(radius: 27, backgroundColor: Color(0xFFF0EAFF), child: Icon(Icons.person, color: lavender)), SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Espace personnel', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)), Text('Prototype local de validation', style: TextStyle(color: Color(0xFF777E90), fontSize: 12))])), Icon(Icons.chevron_right)])),
      const SizedBox(height: 24),
      const Text('Mes rendez-vous', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
      const SizedBox(height: 12),
      if (appointment == null)
        Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: line)), child: Column(children: [const Icon(Icons.event_available, color: aquaDark, size: 42), const SizedBox(height: 10), const Text('Aucun rendez-vous de démonstration', style: TextStyle(fontWeight: FontWeight.w700)), const SizedBox(height: 7), const Text('Planifiez une séance pour tester le parcours complet.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF777E90))), const SizedBox(height: 14), FilledButton(onPressed: onBook, style: FilledButton.styleFrom(backgroundColor: aqua), child: const Text('Planifier une séance'))]))
      else
        AppointmentCard(appointment: appointment!),
      const SizedBox(height: 22),
      Container(padding: const EdgeInsets.all(18), decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFFEAFBFA), Color(0xFFF2EDFF)]), borderRadius: BorderRadius.circular(20)), child: const Row(children: [Icon(Icons.insights, color: lavender, size: 32), SizedBox(width: 14), Expanded(child: Text('Votre bien-être est un chemin, et chaque séance compte.', style: TextStyle(color: ink, fontWeight: FontWeight.w600))) ])),
    ]);
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});
  final Appointment appointment;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: line)),
    child: Row(children: [Container(width: 62, padding: const EdgeInsets.symmetric(vertical: 12), decoration: BoxDecoration(color: const Color(0xFFE9FBF9), borderRadius: BorderRadius.circular(16)), child: Column(children: [Text('${appointment.date.day}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: aquaDark)), Text('${appointment.date.month}/${appointment.date.year}', style: const TextStyle(fontSize: 11, color: aquaDark))])), const SizedBox(width: 14), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(appointment.service, style: const TextStyle(fontWeight: FontWeight.w700)), const SizedBox(height: 5), Text('⏰ ${appointment.time}', style: const TextStyle(color: Color(0xFF747B8D))), const SizedBox(height: 3), const Text('📍 Centre de Luxopuncture', style: TextStyle(color: Color(0xFF747B8D), fontSize: 12))])), const Icon(Icons.chevron_right)]),
  );
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.fromLTRB(20, 20, 20, 24), children: [
    const Text('Nous contacter', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: ink)),
    const SizedBox(height: 18),
    const BrandHeader(compact: true),
    const SizedBox(height: 22),
    Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: line)), child: Column(children: [contactTile(Icons.language, 'Site web', 'clauluxo.fr'), contactTile(Icons.phone_outlined, 'Téléphone', 'Accès depuis le site'), contactTile(Icons.mail_outline, 'E-mail', 'Accès depuis le site'), contactTile(Icons.access_time, 'Horaires', 'À synchroniser avec le site')])),
    const SizedBox(height: 16),
    Container(height: 210, decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), gradient: const LinearGradient(colors: [Color(0xFFE7F5F3), Color(0xFFEFEAF9)])), child: Stack(children: [Positioned.fill(child: CustomPaint(painter: MapPainter())), const Center(child: CircleAvatar(radius: 28, backgroundColor: aqua, child: Icon(Icons.location_on, color: Colors.white, size: 31))), const Positioned(left: 14, right: 14, bottom: 14, child: Card(elevation: 0, child: Padding(padding: EdgeInsets.all(12), child: Row(children: [Icon(Icons.place_outlined, color: lavender), SizedBox(width: 10), Expanded(child: Text('Centre de Luxopuncture Claudine Amerigo', style: TextStyle(fontWeight: FontWeight.w600))), Icon(Icons.chevron_right)]))))])),
    const SizedBox(height: 20),
    const Text('Suivez-nous', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
    const SizedBox(height: 12),
    Row(children: [social(Icons.facebook, 'Facebook'), const SizedBox(width: 10), social(Icons.camera_alt_outlined, 'Instagram'), const SizedBox(width: 10), social(Icons.mail_outline, 'E-mail'), const SizedBox(width: 10), social(Icons.phone_outlined, 'Appel')]),
    const SizedBox(height: 18),
    Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: const Color(0xFFF5F0FF), borderRadius: BorderRadius.circular(20)), child: const Text('V0 de validation : les liens, la carte, Calendly et les coordonnées réelles seront connectés dans la version en ligne.', style: TextStyle(color: Color(0xFF6D6285), height: 1.45))),
  ]);

  Widget contactTile(IconData icon, String title, String subtitle) => ListTile(contentPadding: EdgeInsets.zero, leading: CircleAvatar(backgroundColor: const Color(0xFFF2EEFF), child: Icon(icon, color: lavender)), title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)), subtitle: Text(subtitle), trailing: const Icon(Icons.chevron_right));
  Widget social(IconData icon, String label) => Expanded(child: Column(children: [CircleAvatar(backgroundColor: const Color(0xFFF0EAFF), child: Icon(icon, color: lavender)), const SizedBox(height: 5), Text(label, style: const TextStyle(fontSize: 10, color: Color(0xFF70778A))) ]));
}

class MapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withOpacity(.8)..strokeWidth = 2;
    for (double y = 25; y < size.height; y += 38) canvas.drawLine(Offset(0, y), Offset(size.width, y + 15), paint);
    for (double x = 35; x < size.width; x += 55) canvas.drawLine(Offset(x, 0), Offset(x - 30, size.height), paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
