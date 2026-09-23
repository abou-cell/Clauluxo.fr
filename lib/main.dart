import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'firebase_options.dart';
import 'map_embed.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ClauLuxoApp());
}

const Color aqua = Color(0xFF59D4C4);
const Color aquaDark = Color(0xFF24D1BB);
const Color lavender = Color(0xFF9069FF);
const Color ink = Color(0xFF4D4B52);
const Color muted = Color(0xFF7A7A7A);
const Color softBg = Color(0xFFF7F7F5);
const Color line = Color(0xFFE9E9E9);

const String officialSite = 'https://clauluxo.fr/';
const String mapUrl =
    'https://www.google.com/maps/search/?api=1&query=28+impasse+des+Acacias+13320+Bouc-Bel-Air';
const String calendlyUrl =
    'https://calendly.com/amerigo-claudine1201/seance-equilibre?hide_event_type_details=1&hide_gdpr_banner=1';
const String phoneUrl = 'tel:+33620985806';
const String emailUrl = 'mailto:contact@luxotherapie-amerigo.com';
const String facebookUrl =
    'https://www.facebook.com/CAluxopuncture?rdid=xMwJmuEGDrtRpmLz&share_url=https%3A%2F%2Fwww.facebook.com%2Fshare%2F14Z9NaGd3pp%2F#';
const String instagramUrl =
    'https://www.instagram.com/ca_luxopuncture?igsh=b2J5ZWowZ3p3cHQz';

Future<void> openExternalUrl(String url) async {
  await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}

class ServiceItem {
  const ServiceItem({
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.icon,
    required this.color,
    required this.imageAsset,
    required this.bullets,
  });

  final String title;
  final String shortDescription;
  final String description;
  final IconData icon;
  final Color color;
  final String imageAsset;
  final List<String> bullets;
}

const services = <ServiceItem>[
  ServiceItem(
    title: 'Gestion du stress',
    shortDescription: 'Retrouver calme et sérénité',
    description: '''Dans un quotidien souvent marqué par un rythme intense, les responsabilités et les sollicitations permanentes, le stress peut progressivement s’installer et affecter l’équilibre physique et émotionnel. La Luxopuncture propose une approche douce et naturelle pour accompagner la détente et favoriser un retour à un état de calme intérieur. Grâce à des séquences lumineuses spécifiques associées à une stimulation visuelle contrôlée, elle aide à diminuer les tensions mentales, à apaiser l’activité cognitive excessive et à favoriser un relâchement profond du corps et de l’esprit.''',
    icon: Icons.self_improvement,
    color: Color(0xFFFFF2E6),
    imageAsset: 'assets/site/stress.jpg',
    bullets: [
      'Réduction du stress et de l’anxiété',
      'Diminution des tensions et des compulsions',
      'Retour à un meilleur équilibre émotionnel',
    ],
  ),
  ServiceItem(
    title: 'Sommeil',
    shortDescription: 'Favoriser un sommeil réparateur',
    description: '''Le sommeil joue un rôle essentiel dans l’équilibre physique et mental. La Luxopuncture peut aider à favoriser un état de relaxation profonde propice à l’endormissement. Elle aide à apaiser le mental, à relâcher les tensions et à préparer naturellement l’organisme au repos.''',
    icon: Icons.nightlight_round,
    color: Color(0xFFEAF4FF),
    imageAsset: 'assets/site/sleep.jpg',
    bullets: [
      'Favoriser l’endormissement',
      'Apaiser le mental',
      'Retrouver un sommeil plus paisible et réparateur',
    ],
  ),
  ServiceItem(
    title: 'Perte de poids',
    shortDescription: 'Un accompagnement progressif',
    description: '''La gestion du poids est souvent liée au stress, aux habitudes alimentaires, aux émotions et au rythme de vie. La Luxopuncture peut accompagner une démarche globale en aidant à mieux prendre conscience de ses habitudes, à réduire certains comportements alimentaires impulsifs et à renforcer la motivation.''',
    icon: Icons.balance,
    color: Color(0xFFF3EEFF),
    imageAsset: 'assets/site/weight.jpg',
    bullets: [
      'Accompagnement des compulsions',
      'Objectifs personnalisés',
      'Programme de 13 séances adapté à une perte jusqu’à 10 kg',
    ],
  ),
  ServiceItem(
    title: 'Arrêt du tabac',
    shortDescription: 'Un accompagnement vers plus de liberté',
    description: 'Le site officiel propose un programme complet de 7 séances pour accompagner la démarche d’arrêt du tabac.',
    icon: Icons.eco_outlined,
    color: Color(0xFFECF8EF),
    imageAsset: 'assets/site/hero-treatment.jpg',
    bullets: [
      'Programme complet de 7 séances',
      'Accompagnement personnalisé',
      'Démarche complémentaire de bien-être',
    ],
  ),
  ServiceItem(
    title: 'Énergie et vitalité',
    shortDescription: 'Retrouver tonus et équilibre',
    description: '''La fatigue mentale et physique peut s’installer sous l’effet du stress, d’un rythme de vie soutenu ou d’un manque de récupération. La Luxopuncture peut contribuer à stimuler naturellement l’éveil et la concentration, à améliorer la clarté d’esprit et à renforcer la sensation d’énergie intérieure.''',
    icon: Icons.bolt_outlined,
    color: Color(0xFFFFF5E8),
    imageAsset: 'assets/site/energy.jpg',
    bullets: [
      'Soutenir la vitalité',
      'Améliorer la concentration',
      'Retrouver une dynamique positive',
    ],
  ),
  ServiceItem(
    title: 'Éclat du visage',
    shortDescription: 'Une parenthèse beauté et détente',
    description: '''La qualité de la peau et l’éclat du visage peuvent être influencés par le stress, la fatigue et le manque de sommeil. La Luxopuncture propose une approche douce qui favorise la relaxation et peut contribuer à retrouver un teint plus frais et reposé.''',
    icon: Icons.face_retouching_natural,
    color: Color(0xFFFFEEF4),
    imageAsset: 'assets/site/face.jpg',
    bullets: [
      'Moment de relaxation',
      'Sensation de visage plus apaisé et lumineux',
      'Approche douce et non invasive',
    ],
  ),
  ServiceItem(
    title: 'Ménopause',
    shortDescription: 'Un accompagnement personnalisé',
    description: '''La ménopause est une étape naturelle de la vie qui peut s’accompagner de changements physiques et émotionnels. La Luxopuncture propose une méthode douce visant à favoriser la détente, à apaiser les tensions et à soutenir l’équilibre émotionnel pendant cette période.''',
    icon: Icons.water_drop_outlined,
    color: Color(0xFFEFF4FF),
    imageAsset: 'assets/site/menopause.jpg',
    bullets: [
      'Accompagner les changements de la ménopause',
      'Favoriser la détente et un sommeil plus serein',
      'Retrouver davantage de confort au quotidien',
    ],
  ),
];

class Appointment {
  const Appointment({
    required this.service,
    required this.date,
    required this.time,
    required this.name,
    required this.email,
    required this.phone,
  });

  final String service;
  final DateTime date;
  final String time;
  final String name;
  final String email;
  final String phone;
}

class ClauLuxoApp extends StatefulWidget {
  const ClauLuxoApp({super.key});

  @override
  State<ClauLuxoApp> createState() => _ClauLuxoAppState();
}

class _ClauLuxoAppState extends State<ClauLuxoApp> {
  int selectedIndex = 0;
  Appointment? appointment;

  void selectTab(int value) {
    setState(() => selectedIndex = value);
  }

  void saveAppointment(Appointment value) {
    setState(() {
      appointment = value;
      selectedIndex = 3;
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
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: aqua,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(color: ink, fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(color: ink, fontWeight: FontWeight.w700),
          titleLarge: TextStyle(color: ink, fontWeight: FontWeight.w700),
          bodyLarge: TextStyle(color: ink, height: 1.45),
          bodyMedium: TextStyle(color: muted, height: 1.45),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: selectedIndex,
            children: [
              HomePage(
                onBook: () => selectTab(2),
                onServices: () => selectTab(1),
              ),
              ServicesPage(
                onBooked: saveAppointment,
                onBook: () => selectTab(2),
              ),
              BookingPage(onBooked: saveAppointment),
              SpacePage(
                appointment: appointment,
                onBook: () => selectTab(2),
              ),
              const MorePage(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: selectTab,
          indicatorColor: aqua.withValues(alpha: .16),
          backgroundColor: Colors.white,
          height: 72,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home, color: aquaDark),
              label: 'Accueil',
            ),
            NavigationDestination(
              icon: Icon(Icons.spa_outlined),
              selectedIcon: Icon(Icons.spa, color: aquaDark),
              label: 'Soins',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined),
              selectedIcon: Icon(Icons.calendar_month, color: aquaDark),
              label: 'Rendez-vous',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person, color: aquaDark),
              label: 'Mon espace',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz),
              selectedIcon: Icon(Icons.more_horiz, color: aquaDark),
              label: 'Plus',
            ),
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
        SvgPicture.asset(
          'assets/logo.svg',
          height: compact ? 76 : 112,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          'Centre de Luxopuncture',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: compact ? 18 : 24,
            fontWeight: FontWeight.w700,
            color: ink,
          ),
        ),
        Text(
          'Claudine Amérigo',
          style: TextStyle(
            fontSize: compact ? 16 : 20,
            color: aquaDark,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 3),
        const Text(
          'Bien-être • Équilibre • Vitalité',
          style: TextStyle(color: aquaDark, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.onBook,
    required this.onServices,
  });

  final VoidCallback onBook;
  final VoidCallback onServices;

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        const BrandHeader(),
        const SizedBox(height: 18),
        const OfficialHeroGallery(),
        const SizedBox(height: 22),
        const Text(
          'Retrouvez sommeil, sérénité et vitalité grâce à la',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Sacramento',
            fontStyle: FontStyle.italic,
            fontSize: 24,
            color: ink,
            height: 1.25,
          ),
        ),
        const Text(
          'Luxopuncture',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'serif',
            fontStyle: FontStyle.italic,
            fontSize: 31,
            color: aquaDark,
          ),
        ),
        const SizedBox(height: 24),
        ActionPanel(onBook: onBook, onServices: onServices),
        const SizedBox(height: 20),
        const Row(
          children: [
            Expanded(
              child: MiniBenefit(
                icon: Icons.favorite_border,
                label: 'Écoute\nBienveillance',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: MiniBenefit(
                icon: Icons.spa_outlined,
                label: 'Méthodes\ndouces',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: MiniBenefit(
                icon: Icons.trending_up,
                label: 'Résultats\ndurables',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const InfoCard(
          title: 'Le bien-être par la lumière',
          text:
              'Découvrez une méthode douce, naturelle et non invasive. Chaque séance est personnalisée selon vos besoins et s’inscrit dans une démarche complémentaire de bien-être.',
          icon: Icons.light_mode_outlined,
        ),
        const SizedBox(height: 22),
        const AboutPreview(),
        const SizedBox(height: 22),
        const BenefitsSection(),
      ],
    );
  }
}

class OfficialHeroGallery extends StatelessWidget {
  const OfficialHeroGallery({super.key});

  static const images = [
    'assets/site/hero-treatment.jpg',
    'assets/site/hero-consultation.jpg',
    'assets/site/hero-relaxation.jpg',
    'assets/site/hero-beauty.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 680;
        final children = images
            .map(
              (asset) => ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Semantics(
                  label: 'Image du centre de Luxopuncture',
                  image: true,
                  child: Image.asset(asset, fit: BoxFit.cover),
                ),
              ),
            )
            .toList();
        if (compact) {
          return SizedBox(
            height: 190,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: children.length,
              separatorBuilder: (_, index) => const SizedBox(width: 10),
              itemBuilder: (_, index) => SizedBox(width: 270, child: children[index]),
            ),
          );
        }
        return SizedBox(
          height: 240,
          child: Row(
            children: [
              for (var index = 0; index < children.length; index++) ...[
                Expanded(child: children[index]),
                if (index != children.length - 1) const SizedBox(width: 4),
              ],
            ],
          ),
        );
      },
    );
  }
}

class AboutPreview extends StatelessWidget {
  const AboutPreview({super.key});

  @override
  Widget build(BuildContext context) {
    const text =
        'Je suis Claudine Amérigo, praticienne en Luxopuncture. Je vous accompagne vers un mieux-être durable grâce à une méthode douce, naturelle et non invasive. Chaque séance est personnalisée selon vos besoins : gestion du stress, amélioration du sommeil, accompagnement dans la perte de poids ou recherche d’un meilleur équilibre émotionnel.';
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: line),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final image = ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              'assets/site/about.jpg',
              height: 190,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          );
          const copy = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Claudine Amérigo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: ink,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Directrice du centre de Luxopuncture',
                style: TextStyle(color: aquaDark, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12),
              Text(text, style: TextStyle(color: muted, height: 1.5)),
            ],
          );
          if (constraints.maxWidth < 700) {
            return Column(children: [image, const SizedBox(height: 16), copy]);
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: image),
              const SizedBox(width: 22),
              const Expanded(child: copy),
            ],
          );
        },
      ),
    );
  }
}

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF0EDF7), Color(0xFFEFFBFA)],
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Les bienfaits de la Luxopuncture',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700, color: ink),
          ),
          SizedBox(height: 14),
          BulletLine(text: 'Réduction du stress et de l’anxiété'),
          BulletLine(text: 'Amélioration du sommeil'),
          BulletLine(text: 'Aide à la gestion du poids'),
          BulletLine(text: 'Augmentation de l’énergie et de la vitalité'),
          BulletLine(text: 'Diminution des tensions et des compulsions'),
        ],
      ),
    );
  }
}

class ActionPanel extends StatelessWidget {
  const ActionPanel({
    super.key,
    required this.onBook,
    required this.onServices,
  });

  final VoidCallback onBook;
  final VoidCallback onServices;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [Color(0xFFEFFBFA), Color(0xFFF7F2FF)],
        ),
        border: Border.all(color: const Color(0xFFDBF1EF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Icon(Icons.self_improvement, color: aquaDark),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Une pause pour vous recentrer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ink,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Un accompagnement doux et personnalisé pour retrouver équilibre, calme et vitalité.',
          ),
          const SizedBox(height: 18),
          FilledButton.icon(
            onPressed: onBook,
            style: primaryButton(),
            icon: const Icon(Icons.calendar_month),
            label: const Text(
              'Planifier une séance',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: onServices,
            style: secondaryButton(),
            icon: const Icon(Icons.spa_outlined),
            label: const Text(
              'Découvrir les soins',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class MiniBenefit extends StatelessWidget {
  const MiniBenefit({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: line),
      ),
      child: Column(
        children: [
          Icon(icon, color: lavender),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: ink,
            ),
          ),
        ],
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({
    super.key,
    required this.onBooked,
    required this.onBook,
  });

  final ValueChanged<Appointment> onBooked;
  final VoidCallback onBook;

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        const BrandHeader(compact: true),
        const SizedBox(height: 24),
        const Text(
          'Nos services',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: ink),
        ),
        const Text(
          'Retrouvez votre équilibre naturellement.',
          style: TextStyle(color: muted),
        ),
        const SizedBox(height: 14),
        const InfoCard(
          title: 'La Luxopuncture',
          text:
              'La Luxopuncture utilise une stimulation lumineuse douce sur des points réflexes. Elle ne remplace pas un suivi médical et s’inscrit dans une démarche complémentaire de bien-être.',
          icon: Icons.light_mode_outlined,
        ),
        const SizedBox(height: 20),
        SectionMenuTile(
          icon: Icons.person_outline,
          title: 'À propos',
          subtitle: 'Claudine Amérigo et son approche',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const InfoPage(
                title: 'À propos',
                icon: Icons.person_outline,
                paragraphs: [
                  'Je suis Claudine Amérigo, praticienne en Luxopuncture.',
                  'Je vous accompagne vers un mieux-être durable grâce à une méthode douce, naturelle et non invasive.',
                  'Chaque séance est personnalisée selon vos besoins : gestion du stress, amélioration du sommeil, accompagnement dans la perte de poids ou recherche d’un meilleur équilibre émotionnel.',
                  'Mon objectif est de vous offrir un moment de détente profonde tout en favorisant un rééquilibrage global de votre organisme.',
                ],
              ),
            ),
          ),
        ),
        SectionMenuTile(
          icon: Icons.spa_outlined,
          title: 'La Luxopuncture',
          subtitle: 'Une méthode douce et non invasive',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const InfoPage(
                title: 'La Luxopuncture',
                icon: Icons.spa_outlined,
                paragraphs: [
                  'La Luxopuncture agit par stimulation de points réflexes grâce à la lumière infrarouge.',
                  'Cette approche vise à soutenir les fonctions naturelles de l’organisme et à retrouver équilibre et vitalité.',
                ],
                bullets: [
                  'Réduction du stress et de l’anxiété',
                  'Amélioration du sommeil',
                  'Aide à la gestion du poids',
                  'Augmentation de l’énergie et de la vitalité',
                  'Diminution des tensions et des compulsions',
                ],
              ),
            ),
          ),
        ),
        SectionMenuTile(
          icon: Icons.favorite_border,
          title: 'Nos séances',
          subtitle: 'Comment se déroule une séance ?',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const InfoPage(
                title: 'Nos séances',
                icon: Icons.favorite_border,
                paragraphs: [
                  'Une séance de Luxopuncture dure généralement entre 20 et 30 minutes.',
                  'Elle se déroule dans un cadre calme et personnalisé.',
                ],
                numbered: [
                  'Un échange pour identifier vos besoins et vos objectifs.',
                  'La stimulation de points réflexes grâce à la lumière infrarouge.',
                  'Un moment de relaxation pour permettre au corps d’intégrer les effets de la séance.',
                  'Une séance totalement indolore qui procure une sensation de détente profonde.',
                ],
              ),
            ),
          ),
        ),
        SectionMenuTile(
          icon: Icons.sell_outlined,
          title: 'Tarifs',
          subtitle: 'Consulter les forfaits et séances',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PricingPage()),
          ),
        ),
        SectionMenuTile(
          icon: Icons.help_outline,
          title: 'FAQ',
          subtitle: 'Les réponses aux questions fréquentes',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const FaqPage()),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Nos accompagnements',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: ink),
        ),
        const SizedBox(height: 12),
        ...services.map(
          (service) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ServiceCard(
              service: service,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ServiceDetailPage(
                    service: service,
                    onBooked: onBooked,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SectionMenuTile extends StatelessWidget {
  const SectionMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: line),
        ),
        child: ListTile(
          onTap: onTap,
          leading: CircleAvatar(
            backgroundColor: const Color(0xFFF2EEFF),
            child: Icon(icon, color: lavender),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service, required this.onTap});

  final ServiceItem service;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: service.color,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                service.imageAsset,
                width: 86,
                height: 86,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: ink,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    service.shortDescription,
                    style: const TextStyle(color: muted),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: ink),
          ],
        ),
      ),
    );
  }
}

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({
    super.key,
    required this.service,
    required this.onBooked,
  });

  final ServiceItem service;
  final ValueChanged<Appointment> onBooked;

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: service.title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              service.imageAsset,
              width: double.infinity,
              height: 190,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: service.color,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.white,
                  child: Icon(service.icon, color: aquaDark, size: 36),
                ),
                const SizedBox(height: 14),
                Text(
                  service.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ink,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          Text(service.description, style: const TextStyle(fontSize: 16, height: 1.5)),
          const SizedBox(height: 22),
          const Text(
            'Ce que la séance peut accompagner',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700, color: ink),
          ),
          const SizedBox(height: 10),
          ...service.bullets.map(
            (item) => BulletLine(text: item),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BookingPage(
                  initialService: service.title,
                  onBooked: onBooked,
                ),
              ),
            ),
            style: primaryButton(),
            icon: const Icon(Icons.calendar_month),
            label: const Text('Réserver cette séance'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Cette approche de bien-être ne remplace pas un diagnostic, un avis ou un traitement médical.',
            textAlign: TextAlign.center,
            style: TextStyle(color: muted, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({
    super.key,
    required this.title,
    required this.icon,
    this.paragraphs = const [],
    this.bullets = const [],
    this.numbered = const [],
  });

  final String title;
  final IconData icon;
  final List<String> paragraphs;
  final List<String> bullets;
  final List<String> numbered;

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFFF2EEFF),
            child: Icon(icon, color: lavender, size: 30),
          ),
          const SizedBox(height: 18),
          ...paragraphs.map(
            (paragraph) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Text(paragraph, style: const TextStyle(fontSize: 16, height: 1.5)),
            ),
          ),
          if (numbered.isNotEmpty) ...[
            const SizedBox(height: 8),
            const Text(
              'Les étapes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: ink),
            ),
            const SizedBox(height: 10),
            ...numbered.indexed.map(
              (entry) => NumberLine(number: entry.$1 + 1, text: entry.$2),
            ),
          ],
          if (bullets.isNotEmpty) ...[
            const SizedBox(height: 8),
            const Text(
              'Les bienfaits présentés',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: ink),
            ),
            const SizedBox(height: 10),
            ...bullets.map((item) => BulletLine(text: item)),
          ],
        ],
      ),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  static const prices = [
    ('Bilan préliminaire', 'Consultation personnalisée d’environ 1 h pour définir vos objectifs et votre programme', '60 €'),
    ('Séance individuelle', 'Séance de Luxopuncture à l’unité', '55 €'),
    ('Forfait perte de poids', 'Programme de 13 séances adapté à une perte jusqu’à 10 kg', '650 €'),
    ('Forfait relaxation', 'Programme de 7 séances pour le stress, l’anxiété et le sommeil', '350 €'),
    ('Bien-être ménopause', '8 séances pour accompagner les symptômes de la ménopause', '400 €'),
    ('Éclat du visage', '8 séances pour améliorer l’éclat et la fermeté de la peau', '400 €'),
    ('Arrêt du tabac', 'Programme complet de 7 séances', '350 €'),
    ('Séance d’entretien', 'Séance de suivi à l’unité', '55 €'),
    ('Forfait entretien', '3 séances de suivi (50 € / séance)', '150 €'),
  ];

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'Tarifs',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Les tarifs présentés sont ceux publiés sur le site officiel.',
            style: TextStyle(color: muted, height: 1.45),
          ),
          const SizedBox(height: 18),
          ...prices.map(
            (price) => Card(
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 9),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
                side: const BorderSide(color: line),
              ),
              child: ListTile(
                title: Text(
                  price.$1,
                  style: const TextStyle(fontWeight: FontWeight.w700, color: ink),
                ),
                subtitle: Text(price.$2),
                trailing: Text(
                  price.$3,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: aquaDark,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BookingPage()),
            ),
            style: primaryButton(),
            child: const Text('Choisir une séance'),
          ),
        ],
      ),
    );
  }
}

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  static const items = [
    (
      'Qu’est-ce que la luxothérapie ?',
      'La luxothérapie est une approche de bien-être qui utilise des séquences lumineuses et colorées associées à une stimulation visuelle douce. Elle vise à favoriser la détente, à réduire les tensions nerveuses et à accompagner l’équilibre émotionnel naturellement.',
    ),
    (
      'Quels sont les bienfaits de la luxothérapie ?',
      'Elle est recherchée pour favoriser la relaxation, accompagner la gestion du stress, améliorer la qualité du sommeil, soutenir l’équilibre émotionnel et contribuer à un mieux-être global.',
    ),
    (
      'La luxothérapie peut-elle aider à mieux gérer le stress ?',
      'Elle peut favoriser le relâchement, apaiser l’activité mentale excessive et procurer une sensation de calme intérieur.',
    ),
    (
      'La luxothérapie aide-t-elle à améliorer le sommeil ?',
      'En favorisant l’apaisement et la détente, elle peut contribuer à retrouver un rythme plus serein et un sommeil de meilleure qualité.',
    ),
    (
      'La luxothérapie peut-elle accompagner la gestion du poids ?',
      'Elle peut s’intégrer dans une démarche globale de bien-être et de rééquilibrage, en complément d’une bonne hygiène de vie.',
    ),
    (
      'Comment se déroule une séance ?',
      'La personne est installée face à l’appareil de luxothérapie dans un cadre calme et confortable. La stimulation visuelle est douce et respecte le confort de chacun.',
    ),
    (
      'Combien de temps dure une séance ?',
      'Une séance dure généralement entre 20 et 30 minutes. La durée peut varier selon l’objectif recherché et les besoins de la personne.',
    ),
    (
      'Combien de séances faut-il prévoir ?',
      'Le nombre de séances dépend de la demande et de la sensibilité de chacun. Un accompagnement sur plusieurs séances peut être recommandé.',
    ),
    (
      'La luxothérapie est-elle douloureuse ?',
      'Non, c’est une méthode douce, non invasive et généralement bien tolérée.',
    ),
    (
      'Y a-t-il des contre-indications ?',
      'Comme pour toute approche utilisant une stimulation lumineuse, certaines précautions peuvent être nécessaires. Un échange préalable permet d’adapter l’accompagnement.',
    ),
    (
      'La Luxopuncture remplace-t-elle un suivi médical ?',
      'Non. Elle s’inscrit dans une démarche complémentaire de bien-être et ne remplace ni un avis ni un traitement médical.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'FAQ',
      child: Column(
        children: items
            .map(
              (item) => Card(
                elevation: 0,
                margin: const EdgeInsets.only(bottom: 8),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: line),
                ),
                child: ExpansionTile(
                  title: Text(
                    item.$1,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.$2,
                        style: const TextStyle(color: muted, height: 1.45),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class BookingPage extends StatefulWidget {
  const BookingPage({
    super.key,
    this.initialService,
    this.onBooked,
  });

  final String? initialService;
  final ValueChanged<Appointment>? onBooked;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  late String selectedService;
  int step = 0;
  int dateIndex = 0;
  String selectedTime = '09:00';
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  final times = const ['09:00', '10:00', '11:00', '14:00', '15:00', '16:00', '17:00'];
  final serviceNames = services.map((service) => service.title).toList();

  List<DateTime> get dates =>
      List.generate(7, (index) => DateTime.now().add(Duration(days: index + 1)));

  @override
  void initState() {
    super.initState();
    selectedService = widget.initialService ?? 'Bilan préliminaire';
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  String dayLabel(DateTime date) {
    const days = ['Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam', 'Dim'];
    return days[date.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'Planifier une séance',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StepIndicator(step: step),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () => openExternalUrl(calendlyUrl),
            style: secondaryButton(),
            icon: const Icon(Icons.open_in_new),
            label: const Text('Réserver directement sur Calendly'),
          ),
          const SizedBox(height: 24),
          if (step == 0) _dateStep(),
          if (step == 1) _detailsStep(),
          if (step == 2) _confirmationStep(),
        ],
      ),
    );
  }

  Widget _dateStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Choisissez votre séance',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          initialValue: selectedService,
          items: serviceNames
              .map((service) => DropdownMenuItem(value: service, child: Text(service)))
              .toList(),
          onChanged: (value) => setState(() => selectedService = value ?? selectedService),
          decoration: inputDecoration(label: 'Type de séance'),
        ),
        const SizedBox(height: 20),
        const Text(
          'Sélectionnez une date',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dates.length,
            separatorBuilder: (_, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final date = dates[index];
              final active = index == dateIndex;
              return InkWell(
                onTap: () => setState(() => dateIndex = index),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: 64,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: active ? aqua : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: active ? aqua : line),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dayLabel(date),
                        style: TextStyle(
                          color: active ? Colors.white : muted,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        date.day.toString(),
                        style: TextStyle(
                          color: active ? Colors.white : ink,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Choisissez un créneau',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 9,
          runSpacing: 9,
          children: times
              .map(
                (time) => ChoiceChip(
                  label: Text(time),
                  selected: time == selectedTime,
                  onSelected: (_) => setState(() => selectedTime = time),
                  selectedColor: aqua,
                  backgroundColor: Colors.white,
                  side: BorderSide(color: time == selectedTime ? aqua : line),
                  labelStyle: TextStyle(
                    color: time == selectedTime ? Colors.white : ink,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 24),
        FilledButton(
          onPressed: () => setState(() => step = 1),
          style: primaryButton(),
          child: const Text('Continuer'),
        ),
      ],
    );
  }

  Widget _detailsStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Vos coordonnées',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 6),
        const Text(
          'Ces informations servent à préparer votre demande de rendez-vous.',
          style: TextStyle(color: muted),
        ),
        const SizedBox(height: 18),
        TextField(
          controller: nameController,
          decoration: inputDecoration(label: 'Nom et prénom'),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: inputDecoration(label: 'E-mail'),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: phoneController,
          keyboardType: TextInputType.phone,
          decoration: inputDecoration(label: 'Téléphone'),
        ),
        const SizedBox(height: 22),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () => setState(() => step = 0),
                style: secondaryButton(),
                child: const Text('Retour'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: FilledButton(
                onPressed: () {
                  if (nameController.text.trim().isEmpty ||
                      emailController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Veuillez renseigner votre nom et votre e-mail.'),
                      ),
                    );
                    return;
                  }
                  setState(() => step = 2);
                },
                style: primaryButton(),
                child: const Text('Continuer'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _confirmationStep() {
    final date = dates[dateIndex];
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: line),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFE6FAF8),
                    child: Icon(Icons.check, color: aquaDark),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Vérifiez votre demande',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              DetailLine(label: 'Séance', value: selectedService, icon: Icons.spa_outlined),
              DetailLine(label: 'Date', value: '${dayLabel(date)} ${date.day}/${date.month}', icon: Icons.calendar_today_outlined),
              DetailLine(label: 'Heure', value: selectedTime, icon: Icons.schedule),
              DetailLine(label: 'Nom', value: nameController.text.trim(), icon: Icons.person_outline),
              DetailLine(label: 'E-mail', value: emailController.text.trim(), icon: Icons.mail_outline),
            ],
          ),
        ),
        const SizedBox(height: 18),
        const Text(
          'Prototype : la demande est enregistrée dans l’application. La synchronisation avec un agenda et l’envoi automatique au centre seront ajoutés avec Firebase.',
          textAlign: TextAlign.center,
          style: TextStyle(color: muted, fontSize: 12, height: 1.4),
        ),
        const SizedBox(height: 18),
        FilledButton(
          onPressed: () {
            final value = Appointment(
              service: selectedService,
              date: date,
              time: selectedTime,
              name: nameController.text.trim(),
              email: emailController.text.trim(),
              phone: phoneController.text.trim(),
            );
            widget.onBooked?.call(value);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Demande de rendez-vous enregistrée.')),
            );
            Navigator.pop(context);
          },
          style: primaryButton(),
          child: const Text('Enregistrer la demande'),
        ),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: () => setState(() => step = 1),
          style: secondaryButton(),
          child: const Text('Modifier'),
        ),
      ],
    );
  }
}

class SpacePage extends StatelessWidget {
  const SpacePage({super.key, required this.appointment, required this.onBook});

  final Appointment? appointment;
  final VoidCallback onBook;

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        const Text(
          'Mon espace',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: ink),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: line),
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Color(0xFFF0EAFF),
                child: Icon(Icons.person, color: lavender),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Espace personnel',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text(
                      'Prototype de suivi de rendez-vous',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Mes rendez-vous',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        const SizedBox(height: 12),
        if (appointment == null)
          EmptyAppointment(onBook: onBook)
        else
          AppointmentCard(appointment: appointment!),
      ],
    );
  }
}

class EmptyAppointment extends StatelessWidget {
  const EmptyAppointment({super.key, required this.onBook});

  final VoidCallback onBook;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: line),
      ),
      child: Column(
        children: [
          const Icon(Icons.event_available, color: aquaDark, size: 42),
          const SizedBox(height: 10),
          const Text(
            'Aucun rendez-vous enregistré',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 7),
          const Text(
            'Planifiez une séance pour tester le parcours.',
            textAlign: TextAlign.center,
            style: TextStyle(color: muted),
          ),
          const SizedBox(height: 14),
          FilledButton(
            onPressed: onBook,
            style: FilledButton.styleFrom(backgroundColor: aqua),
            child: const Text('Planifier une séance'),
          ),
        ],
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: line),
      ),
      child: Row(
        children: [
          Container(
            width: 66,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFE9FBF9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text(
                  appointment.date.day.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: aquaDark,
                  ),
                ),
                Text(
                  '${appointment.date.month}/${appointment.date.year}',
                  style: const TextStyle(fontSize: 11, color: aquaDark),
                ),
              ],
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointment.service,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 5),
                Text('Heure : ${appointment.time}', style: const TextStyle(color: muted)),
                const SizedBox(height: 3),
                Text(appointment.name, style: const TextStyle(color: muted, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        const Text(
          'Plus',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: ink),
        ),
        const SizedBox(height: 16),
        SectionMenuTile(
          icon: Icons.contact_mail_outlined,
          title: 'Nous contacter',
          subtitle: 'Adresse, site et itinéraire',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ContactPage()),
          ),
        ),
        SectionMenuTile(
          icon: Icons.help_outline,
          title: 'FAQ',
          subtitle: 'Questions fréquentes',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const FaqPage()),
          ),
        ),
        SectionMenuTile(
          icon: Icons.info_outline,
          title: 'Mentions légales',
          subtitle: 'Informations et confidentialité',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const LegalPage()),
          ),
        ),
        const SizedBox(height: 18),
        const InfoCard(
          title: 'ClauLuxo',
          text:
              'Une application de présentation et de demande de rendez-vous pour le Centre de Luxopuncture Claudine Amérigo.',
          icon: Icons.spa_outlined,
        ),
      ],
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> openLink(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'Nous contacter',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BrandHeader(compact: true),
          const SizedBox(height: 22),
          const InfoCard(
            title: 'Centre de Luxopuncture',
            text: 'Claudine Amérigo',
            icon: Icons.spa_outlined,
          ),
          const SizedBox(height: 12),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundColor: Color(0xFFF2EEFF),
              child: Icon(Icons.place_outlined, color: lavender),
            ),
            title: Text('Adresse', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text('28 impasse des Acacias\n13320 Bouc-Bel-Air'),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: buildGoogleMapEmbed(),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: () => openLink(mapUrl),
            style: primaryButton(),
            icon: const Icon(Icons.directions),
            label: const Text('Ouvrir l’itinéraire'),
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: () => openLink(officialSite),
            style: secondaryButton(),
            icon: const Icon(Icons.language),
            label: const Text('Ouvrir le site officiel'),
          ),
          const SizedBox(height: 10),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.phone_outlined, color: lavender),
            title: const Text('Téléphone', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: const Text('+33 6 20 98 58 06'),
            onTap: () => openLink(phoneUrl),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.mail_outline, color: lavender),
            title: const Text('E-mail', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: const Text('contact@luxotherapie-amerigo.com'),
            onTap: () => openLink(emailUrl),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 10,
            runSpacing: 8,
            children: [
              OutlinedButton.icon(
                onPressed: () => openLink(facebookUrl),
                icon: const Icon(Icons.facebook),
                label: const Text('Facebook'),
              ),
              OutlinedButton.icon(
                onPressed: () => openLink(instagramUrl),
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('Instagram'),
              ),
              OutlinedButton.icon(
                onPressed: () => openLink(calendlyUrl),
                icon: const Icon(Icons.calendar_month_outlined),
                label: const Text('Calendly'),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            'Les informations de contact et le plan sont repris du site officiel clauluxo.fr.',
            style: TextStyle(color: muted, fontSize: 12, height: 1.4),
          ),
        ],
      ),
    );
  }
}

class LegalPage extends StatelessWidget {
  const LegalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailScaffold(
      title: 'Informations légales',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cette version prototype ne collecte pas encore de données dans une base distante.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          SizedBox(height: 18),
          Text(
            'Les mentions légales et la politique de confidentialité devront être reprises intégralement depuis le site officiel avant une mise en production.',
            style: TextStyle(color: muted, height: 1.5),
          ),
          SizedBox(height: 18),
          Text(
            'La future version Firestore devra expliquer la conservation des demandes de rendez-vous, leur finalité et les droits des utilisateurs.',
            style: TextStyle(color: muted, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class DetailScaffold extends StatelessWidget {
  const DetailScaffold({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softBg,
      appBar: AppBar(
        backgroundColor: softBg,
        foregroundColor: ink,
        elevation: 0,
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: AppScroll(children: [child]),
    );
  }
}

class AppScroll extends StatelessWidget {
  const AppScroll({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth > 1100 ? 1100.0 : constraints.maxWidth;
        return Center(
          child: SizedBox(
            width: width,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
              children: children,
            ),
          ),
        );
      },
    );
  }
}

class StepIndicator extends StatelessWidget {
  const StepIndicator({super.key, required this.step});

  final int step;

  @override
  Widget build(BuildContext context) {
    const labels = ['Date & heure', 'Coordonnées', 'Confirmation'];
    return Row(
      children: List.generate(
        labels.length,
        (index) => Expanded(
          child: Column(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: index <= step ? aqua : const Color(0xFFE9ECF4),
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: index <= step ? Colors.white : ink,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                labels[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: index == step ? aquaDark : muted,
                  fontWeight: index == step ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
  });

  final String title;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: line),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFF2EEFF),
            child: Icon(icon, color: lavender),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w700, color: ink)),
                const SizedBox(height: 6),
                Text(text, style: const TextStyle(color: muted, height: 1.45)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BulletLine extends StatelessWidget {
  const BulletLine({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle_outline, color: aquaDark, size: 21),
          const SizedBox(width: 9),
          Expanded(child: Text(text, style: const TextStyle(height: 1.4))),
        ],
      ),
    );
  }
}

class NumberLine extends StatelessWidget {
  const NumberLine({super.key, required this.number, required this.text});

  final int number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: aqua,
            child: Text(
              number.toString(),
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(height: 1.4))),
        ],
      ),
    );
  }
}

class DetailLine extends StatelessWidget {
  const DetailLine({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: lavender, size: 20),
          const SizedBox(width: 10),
          SizedBox(
            width: 76,
            child: Text(label, style: const TextStyle(color: muted, fontSize: 12)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(fontWeight: FontWeight.w600, color: ink)),
          ),
        ],
      ),
    );
  }
}

InputDecoration inputDecoration({required String label}) {
  return InputDecoration(
    labelText: label,
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: line),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: line),
    ),
  );
}

ButtonStyle primaryButton() {
  return FilledButton.styleFrom(
    backgroundColor: aqua,
    foregroundColor: Colors.white,
    minimumSize: const Size.fromHeight(52),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
  );
}

ButtonStyle secondaryButton() {
  return OutlinedButton.styleFrom(
    foregroundColor: lavender,
    minimumSize: const Size.fromHeight(52),
    side: const BorderSide(color: lavender),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
  );
}
