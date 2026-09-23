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

const Color mint = Color(0xFF59D4C4);
const Color mintDark = Color(0xFF24BFAE);
const Color lavender = Color(0xFF9069FF);
const Color ink = Color(0xFF30343B);
const Color muted = Color(0xFF737982);
const Color softBackground = Color(0xFFF8F9F7);
const Color borderColor = Color(0xFFE8ECEA);
const Color lavenderWash = Color(0xFFF2EEFF);
const Color mintWash = Color(0xFFEAF9F6);

const String officialSite = 'https://clauluxo.fr/';
const String mapUrl =
    'https://www.google.com/maps/search/?api=1&query=28+impasse+des+Acacias+13320+Bouc-Bel-Air';
const String calendlyUrl =
    'https://calendly.com/amerigo-claudine1201/seance-equilibre?hide_event_type_details=1&hide_gdpr_banner=1';
const String phoneUrl = 'tel:+33620985806';
const String emailUrl = 'mailto:contact@luxotherapie-amerigo.com';
const String facebookUrl = 'https://www.facebook.com/CAluxopuncture';
const String instagramUrl = 'https://www.instagram.com/ca_luxopuncture';

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
    required this.category,
    required this.duration,
    required this.price,
    required this.bullets,
  });

  final String title;
  final String shortDescription;
  final String description;
  final IconData icon;
  final Color color;
  final String imageAsset;
  final String category;
  final String duration;
  final String price;
  final List<String> bullets;
}

const services = <ServiceItem>[
  ServiceItem(
    title: 'Gestion du stress',
    shortDescription: 'Retrouver calme et sérénité',
    description:
        'Dans un quotidien souvent marqué par un rythme intense, la Luxopuncture propose une approche douce et naturelle pour accompagner la détente, apaiser les tensions et favoriser un retour au calme intérieur.',
    icon: Icons.self_improvement,
    color: Color(0xFFFFF2E6),
    imageAsset: 'assets/site/stress.jpg',
    category: 'Stress',
    duration: '20 à 30 min',
    price: 'Séance personnalisée',
    bullets: [
      'Réduction du stress et de l’anxiété',
      'Diminution des tensions et des compulsions',
      'Retour à un meilleur équilibre émotionnel',
    ],
  ),
  ServiceItem(
    title: 'Sommeil',
    shortDescription: 'Favoriser un sommeil réparateur',
    description:
        'La Luxopuncture peut aider à apaiser le mental, relâcher les tensions et préparer naturellement l’organisme au repos dans le cadre d’une démarche globale de bien-être.',
    icon: Icons.nightlight_round,
    color: Color(0xFFEAF4FF),
    imageAsset: 'assets/site/sleep.jpg',
    category: 'Sommeil',
    duration: '20 à 30 min',
    price: 'Séance personnalisée',
    bullets: [
      'Favoriser l’endormissement',
      'Apaiser le mental',
      'Retrouver un sommeil plus paisible',
    ],
  ),
  ServiceItem(
    title: 'Perte de poids',
    shortDescription: 'Un accompagnement progressif',
    description:
        'La gestion du poids peut être liée au stress, aux habitudes alimentaires et aux émotions. La Luxopuncture accompagne une démarche globale et personnalisée, sans se substituer à un suivi médical ou nutritionnel.',
    icon: Icons.balance,
    color: Color(0xFFF3EEFF),
    imageAsset: 'assets/site/weight.jpg',
    category: 'Poids',
    duration: '20 à 30 min',
    price: 'Programme personnalisé',
    bullets: [
      'Accompagnement des compulsions',
      'Objectifs personnalisés',
      'Programme progressif adapté à vos besoins',
    ],
  ),
  ServiceItem(
    title: 'Arrêt du tabac',
    shortDescription: 'Un accompagnement vers plus de liberté',
    description:
        'Le centre propose un accompagnement bien-être structuré pour soutenir votre démarche d’arrêt du tabac. Le programme est complémentaire et ne remplace pas l’avis d’un professionnel de santé.',
    icon: Icons.eco_outlined,
    color: Color(0xFFECF8EF),
    imageAsset: 'assets/site/hero-treatment.jpg',
    category: 'Équilibre',
    duration: '20 à 30 min',
    price: 'Programme de 7 séances',
    bullets: [
      'Programme complet de 7 séances',
      'Accompagnement personnalisé',
      'Démarche complémentaire de bien-être',
    ],
  ),
  ServiceItem(
    title: 'Énergie et vitalité',
    shortDescription: 'Retrouver tonus et équilibre',
    description:
        'La fatigue mentale et physique peut s’installer sous l’effet du stress ou d’un rythme de vie soutenu. Cette approche peut contribuer à soutenir la vitalité et la concentration.',
    icon: Icons.bolt_outlined,
    color: Color(0xFFFFF5E8),
    imageAsset: 'assets/site/energy.jpg',
    category: 'Vitalité',
    duration: '20 à 30 min',
    price: 'Séance personnalisée',
    bullets: [
      'Soutenir la vitalité',
      'Améliorer la concentration',
      'Retrouver une dynamique positive',
    ],
  ),
  ServiceItem(
    title: 'Éclat du visage',
    shortDescription: 'Une parenthèse beauté et détente',
    description:
        'Une séance douce pour s’accorder un moment de relaxation et contribuer à retrouver un visage plus reposé dans une atmosphère calme et lumineuse.',
    icon: Icons.face_retouching_natural,
    color: Color(0xFFFFEEF4),
    imageAsset: 'assets/site/face.jpg',
    category: 'Beauté',
    duration: '20 à 30 min',
    price: 'Séance découverte',
    bullets: [
      'Moment de relaxation',
      'Sensation de visage plus apaisé et lumineux',
      'Approche douce et non invasive',
    ],
  ),
  ServiceItem(
    title: 'Ménopause',
    shortDescription: 'Un accompagnement personnalisé',
    description:
        'La ménopause est une étape naturelle de la vie qui peut s’accompagner de changements physiques et émotionnels. La Luxopuncture propose une méthode douce visant à favoriser la détente et le confort au quotidien.',
    icon: Icons.water_drop_outlined,
    color: Color(0xFFEFF4FF),
    imageAsset: 'assets/site/menopause.jpg',
    category: 'Ménopause',
    duration: '20 à 30 min',
    price: 'Programme personnalisé',
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
  ServiceItem? bookingService;

  void selectTab(int index) {
    setState(() => selectedIndex = index);
  }

  void openBooking([ServiceItem? service]) {
    setState(() {
      bookingService = service;
      selectedIndex = 2;
    });
  }

  void saveAppointment(Appointment value) {
    setState(() {
      appointment = value;
      bookingService = services.firstWhere(
        (item) => item.title == value.service,
        orElse: () => services.first,
      );
      selectedIndex = 3;
    });
  }

  void clearAppointment() {
    setState(() => appointment = null);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClauLuxo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: softBackground,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: mint,
          brightness: Brightness.light,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          labelStyle: const TextStyle(color: muted),
          floatingLabelStyle: const TextStyle(color: mintDark),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: mint, width: 1.5),
          ),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: ink,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.8,
          ),
          headlineMedium: TextStyle(
            color: ink,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
          titleLarge: TextStyle(color: ink, fontWeight: FontWeight.w800),
          titleMedium: TextStyle(color: ink, fontWeight: FontWeight.w700),
          bodyLarge: TextStyle(color: ink, height: 1.45),
          bodyMedium: TextStyle(color: muted, height: 1.45),
        ),
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          final isTablet = constraints.maxWidth >= 680;
          final isDesktop = constraints.maxWidth >= 1040;
          final pages = <Widget>[
            HomePage(
              onBook: () => openBooking(),
              onServices: () => selectTab(1),
              onSpace: () => selectTab(3),
              onMore: () => showMoreMenu(context),
            ),
            ServicesPage(
              onBook: openBooking,
              onMore: () => showMoreMenu(context),
            ),
            BookingPage(
              initialService: bookingService,
              onBooked: saveAppointment,
              onMore: () => showMoreMenu(context),
            ),
            SpacePage(
              appointment: appointment,
              onBook: () => openBooking(),
              onCancel: clearAppointment,
              onMore: () => showMoreMenu(context),
            ),
          ];

          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  if (isTablet)
                    _SideNavigation(
                      selectedIndex: selectedIndex,
                      onSelected: selectTab,
                      expanded: isDesktop,
                      onMore: () => showMoreMenu(context),
                    ),
                  Expanded(
                    child: IndexedStack(
                      index: selectedIndex,
                      children: pages,
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: isTablet
                ? null
                : _BottomNavigation(
                    selectedIndex: selectedIndex,
                    onSelected: selectTab,
                  ),
          );
        },
      ),
    );
  }

  void showMoreMenu(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const MorePage()),
    );
  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({
    required this.selectedIndex,
    required this.onSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelected,
      height: 76,
      backgroundColor: Colors.white,
      indicatorColor: mint.withAlpha(38),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home, color: mintDark),
          label: 'Accueil',
        ),
        NavigationDestination(
          icon: Icon(Icons.spa_outlined),
          selectedIcon: Icon(Icons.spa, color: mintDark),
          label: 'Soins',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month, color: mintDark),
          label: 'Rendez-vous',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person, color: mintDark),
          label: 'Mon espace',
        ),
      ],
    );
  }
}

class _SideNavigation extends StatelessWidget {
  const _SideNavigation({
    required this.selectedIndex,
    required this.onSelected,
    required this.expanded,
    required this.onMore,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelected;
  final bool expanded;
  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: expanded ? 236 : 88,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: expanded ? 24 : 12),
            child: Row(
              mainAxisAlignment: expanded
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/logo.svg', width: 44, height: 44),
                if (expanded) ...[
                  const SizedBox(width: 10),
                  const Text(
                    'ClauLuxo',
                    style: TextStyle(
                      color: ink,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 26),
          Expanded(
            child: NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected: onSelected,
              extended: expanded,
              backgroundColor: Colors.white,
              groupAlignment: -0.75,
              labelType: expanded ? null : NavigationRailLabelType.all,
              indicatorColor: mint.withAlpha(42),
              selectedIconTheme: const IconThemeData(color: mintDark),
              unselectedIconTheme: const IconThemeData(color: muted),
              selectedLabelTextStyle: const TextStyle(
                color: mintDark,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelTextStyle: const TextStyle(color: muted),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Accueil'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.spa_outlined),
                  selectedIcon: Icon(Icons.spa),
                  label: Text('Soins'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.calendar_month_outlined),
                  selectedIcon: Icon(Icons.calendar_month),
                  label: Text('Rendez-vous'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Mon espace'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: expanded ? 12 : 8),
            child: expanded
                ? OutlinedButton.icon(
                    onPressed: onMore,
                    style: secondaryButton(),
                    icon: const Icon(Icons.more_horiz),
                    label: const Text('Plus'),
                  )
                : IconButton(
                    onPressed: onMore,
                    tooltip: 'Plus',
                    icon: const Icon(Icons.more_horiz, color: muted),
                  ),
          ),
          if (expanded)
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 8, 22, 2),
              child: Text(
                '28 impasse des Acacias\n13320 Bouc-Bel-Air',
                textAlign: TextAlign.center,
                style: TextStyle(color: muted, fontSize: 11, height: 1.4),
              ),
            ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.onBook,
    required this.onServices,
    required this.onSpace,
    required this.onMore,
  });

  final VoidCallback onBook;
  final VoidCallback onServices;
  final VoidCallback onSpace;
  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        TopBar(
          title: 'ClauLuxo',
          subtitle: 'Bien-être · Équilibre · Vitalité',
          onProfile: onSpace,
          onMore: onMore,
        ),
        const SizedBox(height: 18),
        OfficialHeroGallery(onBook: onBook, onServices: onServices),
        const SizedBox(height: 22),
        const SectionHeading(
          eyebrow: 'VOTRE MOMENT',
          title: 'Retrouvez sommeil, sérénité et vitalité',
          subtitle:
              'Un accompagnement doux, personnalisé et non invasif au Centre de Luxopuncture.',
        ),
        const SizedBox(height: 18),
        QuickActionPanel(onBook: onBook, onServices: onServices),
        const SizedBox(height: 20),
        const BenefitStrip(),
        const SizedBox(height: 22),
        ResponsiveSection(
          title: 'Nos accompagnements',
          subtitle: 'Des séances pensées autour de vos besoins.',
          actionLabel: 'Voir tous les soins',
          onAction: onServices,
          child: ServicePreviewRow(onTap: (service) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ServiceDetailPage(
                  service: service,
                  onBook: (_) => onBook,
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 22),
        const InfoCard(
          title: 'Le bien-être par la lumière',
          text:
              'La Luxopuncture utilise une stimulation lumineuse douce sur des points réflexes. Elle s’inscrit dans une démarche complémentaire de bien-être et ne remplace pas un suivi médical.',
          icon: Icons.light_mode_outlined,
        ),
        const SizedBox(height: 22),
        const AboutPreview(),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onProfile,
    required this.onMore,
  });

  final String title;
  final String subtitle;
  final VoidCallback onProfile;
  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color: borderColor),
          ),
          child: SvgPicture.asset('assets/logo.svg', width: 44, height: 44),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: ink,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: mintDark,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: onProfile,
          tooltip: 'Mon espace',
          style: IconButton.styleFrom(
            backgroundColor: lavenderWash,
            foregroundColor: lavender,
            minimumSize: const Size(48, 48),
          ),
          icon: const Icon(Icons.person_outline),
        ),
        const SizedBox(width: 4),
        IconButton(
          onPressed: onMore,
          tooltip: 'Plus',
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: ink,
            side: const BorderSide(color: borderColor),
            minimumSize: const Size(48, 48),
          ),
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

class OfficialHeroGallery extends StatefulWidget {
  const OfficialHeroGallery({
    super.key,
    required this.onBook,
    required this.onServices,
  });

  final VoidCallback onBook;
  final VoidCallback onServices;

  @override
  State<OfficialHeroGallery> createState() => _OfficialHeroGalleryState();
}

class _OfficialHeroGalleryState extends State<OfficialHeroGallery> {
  final PageController controller = PageController();
  int currentPage = 0;

  static const slides = <_HeroSlideData>[
    _HeroSlideData(
      image: 'assets/site/hero-treatment.jpg',
      eyebrow: 'CENTRE DE LUXOPUNCTURE',
      title: 'Une pause pour vous recentrer',
      subtitle: 'Calme, équilibre et vitalité au quotidien.',
    ),
    _HeroSlideData(
      image: 'assets/site/hero-consultation.jpg',
      eyebrow: 'ACCOMPAGNEMENT PERSONNALISÉ',
      title: 'Prenez soin de vous',
      subtitle: 'Des séances adaptées à vos objectifs et à votre rythme.',
    ),
    _HeroSlideData(
      image: 'assets/site/hero-relaxation.jpg',
      eyebrow: 'MÉTHODE DOUCE',
      title: 'Respirez, relâchez, avancez',
      subtitle: 'Une expérience lumineuse dans un cadre bienveillant.',
    ),
    _HeroSlideData(
      image: 'assets/site/hero-beauty.jpg',
      eyebrow: 'BIEN-ÊTRE & BEAUTÉ',
      title: 'Révélez votre éclat',
      subtitle: 'Une parenthèse de détente pour retrouver votre énergie.',
    ),
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void moveTo(int page) {
    final target = (page + slides.length) % slides.length;
    controller.animateToPage(
      target,
      duration: const Duration(milliseconds: 360),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxWidth < 540 ? 360.0 : 330.0;
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: SizedBox(
                height: height,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: controller,
                      itemCount: slides.length,
                      onPageChanged: (value) {
                        setState(() => currentPage = value);
                      },
                      itemBuilder: (context, index) {
                        final slide = slides[index];
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              slide.image,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(color: mintWash);
                              },
                            ),
                            const DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0x15000000),
                                    Color(0xA8000000),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 22,
                              right: 22,
                              bottom: 24,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    slide.eyebrow,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                    slide.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      height: 1.08,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                    slide.subtitle,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      height: 1.35,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 8,
                                    children: [
                                      FilledButton.icon(
                                        onPressed: widget.onBook,
                                        style: FilledButton.styleFrom(
                                          backgroundColor: mint,
                                          foregroundColor: ink,
                                          minimumSize: const Size(0, 46),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.calendar_month_outlined,
                                          size: 19,
                                        ),
                                        label: const Text(
                                          'Prendre rendez-vous',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                      OutlinedButton(
                                        onPressed: widget.onServices,
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          minimumSize: const Size(0, 46),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          side: const BorderSide(
                                            color: Colors.white70,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                          ),
                                        ),
                                        child: const Text('Découvrir'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 16,
                              right: 16,
                              child: Row(
                                children: [
                                  _HeroArrow(
                                    icon: Icons.chevron_left,
                                    onTap: () => moveTo(currentPage - 1),
                                  ),
                                  const SizedBox(width: 7),
                                  _HeroArrow(
                                    icon: Icons.chevron_right,
                                    onTap: () => moveTo(currentPage + 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                slides.length,
                (index) => GestureDetector(
                  onTap: () => moveTo(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 220),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: index == currentPage ? 25 : 8,
                    decoration: BoxDecoration(
                      color: index == currentPage ? mintDark : borderColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _HeroSlideData {
  const _HeroSlideData({
    required this.image,
    required this.eyebrow,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String eyebrow;
  final String title;
  final String subtitle;
}

class _HeroArrow extends StatelessWidget {
  const _HeroArrow({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withAlpha(75),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          width: 42,
          height: 42,
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.eyebrow,
    required this.title,
    required this.subtitle,
  });

  final String eyebrow;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eyebrow,
          style: const TextStyle(
            color: mintDark,
            letterSpacing: 1.4,
            fontSize: 11,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          title,
          style: const TextStyle(
            color: ink,
            fontSize: 28,
            height: 1.1,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: const TextStyle(color: muted, height: 1.45),
        ),
      ],
    );
  }
}

class QuickActionPanel extends StatelessWidget {
  const QuickActionPanel({
    super.key,
    required this.onBook,
    required this.onServices,
  });

  final VoidCallback onBook;
  final VoidCallback onServices;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFEFFBF8), Color(0xFFF5F0FF)],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFDCEFEA)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final compact = constraints.maxWidth < 520;
          final copy = const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Votre prochain moment de mieux-être',
                style: TextStyle(
                  color: ink,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Choisissez une séance ou échangez avec le centre pour trouver l’accompagnement adapté.',
                style: TextStyle(color: muted, height: 1.4),
              ),
            ],
          );
          final actions = Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton.icon(
                onPressed: onBook,
                style: primaryButton(),
                icon: const Icon(Icons.calendar_month_outlined),
                label: const Text('Planifier une séance'),
              ),
              const SizedBox(height: 9),
              OutlinedButton.icon(
                onPressed: onServices,
                style: secondaryButton(),
                icon: const Icon(Icons.spa_outlined),
                label: const Text('Explorer les soins'),
              ),
            ],
          );
          if (compact) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [copy, const SizedBox(height: 16), actions],
            );
          }
          return Row(
            children: [
              const Expanded(child: copy),
              const SizedBox(width: 22),
              SizedBox(width: 235, child: actions),
            ],
          );
        },
      ),
    );
  }
}

class BenefitStrip extends StatelessWidget {
  const BenefitStrip({super.key});

  @override
  Widget build(BuildContext context) {
    const benefits = [
      (Icons.favorite_border, 'Écoute', 'Une approche bienveillante'),
      (Icons.spa_outlined, 'Douceur', 'Une méthode non invasive'),
      (Icons.trending_up, 'Équilibre', 'Un accompagnement progressif'),
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = constraints.maxWidth > 600 ? 3 : 1;
        return GridView.count(
          crossAxisCount: columns,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: columns == 1 ? 4.2 : 1.4,
          children: benefits
              .map(
                (item) => Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: borderColor),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: lavenderWash,
                        child: Icon(item.$1, color: lavender, size: 20),
                      ),
                      const SizedBox(width: 11),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.$2,
                              style: const TextStyle(
                                color: ink,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              item.$3,
                              style: const TextStyle(
                                color: muted,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class ResponsiveSection extends StatelessWidget {
  const ResponsiveSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.actionLabel,
    required this.onAction,
    required this.child,
  });

  final String title;
  final String subtitle;
  final String actionLabel;
  final VoidCallback onAction;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: ink,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: muted)),
                ],
              ),
            ),
            TextButton(
              onPressed: onAction,
              style: TextButton.styleFrom(foregroundColor: lavender),
              child: Text(actionLabel),
            ),
          ],
        ),
        const SizedBox(height: 13),
        child,
      ],
    );
  }
}

class ServicePreviewRow extends StatelessWidget {
  const ServicePreviewRow({super.key, required this.onTap});

  final ValueChanged<ServiceItem> onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final service = services[index];
          return SizedBox(
            width: 225,
            child: ServicePreviewCard(
              service: service,
              onTap: () => onTap(service),
            ),
          );
        },
      ),
    );
  }
}

class ServicePreviewCard extends StatelessWidget {
  const ServicePreviewCard({
    super.key,
    required this.service,
    required this.onTap,
  });

  final ServiceItem service;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(22),
                ),
                child: SmartImage(
                  asset: service.imageAsset,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 10, 11, 11),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      service.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: ink,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_forward, color: lavender, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesPage extends StatefulWidget {
  const ServicesPage({
    super.key,
    required this.onBook,
    required this.onMore,
  });

  final ValueChanged<ServiceItem?> onBook;
  final VoidCallback onMore;

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  final TextEditingController searchController = TextEditingController();
  String selectedCategory = 'Tous';

  static const categories = [
    'Tous',
    'Stress',
    'Sommeil',
    'Poids',
    'Vitalité',
    'Beauté',
    'Ménopause',
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = searchController.text.trim().toLowerCase();
    final filtered = services.where((service) {
      final matchesCategory = selectedCategory == 'Tous' ||
          service.category == selectedCategory;
      final matchesQuery = query.isEmpty ||
          service.title.toLowerCase().contains(query) ||
          service.shortDescription.toLowerCase().contains(query);
      return matchesCategory && matchesQuery;
    }).toList();

    return AppScroll(
      children: [
        TopBar(
          title: 'Nos soins',
          subtitle: 'Des accompagnements à votre rythme',
          onProfile: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const MorePage()),
          ),
          onMore: widget.onMore,
        ),
        const SizedBox(height: 22),
        const SectionHeading(
          eyebrow: 'CHOISIR SON ACCOMPAGNEMENT',
          title: 'Un soin qui vous ressemble',
          subtitle:
              'Explorez les différentes séances et ouvrez chaque carte pour découvrir le détail.',
        ),
        const SizedBox(height: 16),
        TextField(
          controller: searchController,
          onChanged: (_) => setState(() {}),
          decoration: InputDecoration(
            hintText: 'Rechercher un soin',
            prefixIcon: const Icon(Icons.search, color: lavender),
            suffixIcon: searchController.text.isEmpty
                ? null
                : IconButton(
                    onPressed: () {
                      searchController.clear();
                      setState(() {});
                    },
                    icon: const Icon(Icons.close),
                  ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 44,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (_, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final category = categories[index];
              final selected = selectedCategory == category;
              return ChoiceChip(
                label: Text(category),
                selected: selected,
                onSelected: (_) => setState(() => selectedCategory = category),
                selectedColor: mint,
                backgroundColor: Colors.white,
                side: BorderSide(
                  color: selected ? mint : borderColor,
                ),
                labelStyle: TextStyle(
                  color: selected ? ink : muted,
                  fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        if (filtered.isEmpty)
          const EmptySearchState()
        else
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 900
                  ? 3
                  : constraints.maxWidth >= 590
                      ? 2
                      : 1;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filtered.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: columns == 1 ? 2.35 : 0.78,
                ),
                itemBuilder: (context, index) {
                  final service = filtered[index];
                  return ServiceCard(
                    service: service,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ServiceDetailPage(
                          service: service,
                          onBook: widget.onBook,
                        ),
                      ),
                    ),
                    onBook: () => widget.onBook(service),
                  );
                },
              );
            },
          ),
        const SizedBox(height: 20),
        const DisclaimerCard(),
      ],
    );
  }
}

class EmptySearchState extends StatelessWidget {
  const EmptySearchState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: borderColor),
      ),
      child: const Column(
        children: [
          Icon(Icons.search_off, color: lavender, size: 40),
          SizedBox(height: 10),
          Text(
            'Aucun soin trouvé',
            style: TextStyle(color: ink, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 5),
          Text(
            'Essayez un autre mot-clé ou réinitialisez le filtre.',
            textAlign: TextAlign.center,
            style: TextStyle(color: muted),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.service,
    required this.onTap,
    required this.onBook,
  });

  final ServiceItem service;
  final VoidCallback onTap;
  final VoidCallback onBook;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final compact = constraints.maxWidth < 500;
            final image = ClipRRect(
              borderRadius: compact
                  ? BorderRadius.circular(18)
                  : const BorderRadius.vertical(
                      top: Radius.circular(22),
                    ),
              child: SmartImage(
                asset: service.imageAsset,
                width: compact ? 126 : double.infinity,
                height: compact ? 126 : 155,
              ),
            );
            final copy = Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          service.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: ink,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Icon(service.icon, color: lavender, size: 21),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    service.shortDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: muted, height: 1.35),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      SmallTag(icon: Icons.schedule, label: service.duration),
                      SmallTag(icon: Icons.spa_outlined, label: service.category),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: onBook,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: lavender,
                        minimumSize: const Size.fromHeight(40),
                        side: const BorderSide(color: lavender),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Réserver ce soin'),
                    ),
                  ),
                ],
              ),
            );
            if (compact) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: image,
                  ),
                  Expanded(child: copy),
                ],
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [image, Expanded(child: copy)],
            );
          },
        ),
      ),
    );
  }
}

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({
    super.key,
    required this.service,
    required this.onBook,
  });

  final ServiceItem service;
  final ValueChanged<ServiceItem?> onBook;

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: service.title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SmartImage(
              asset: service.imageAsset,
              width: double.infinity,
              height: 250,
            ),
          ),
          const SizedBox(height: 18),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  service.title,
                  style: const TextStyle(
                    color: ink,
                    fontSize: 28,
                    height: 1.1,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Icon(service.icon, color: lavender, size: 30),
            ],
          ),
          const SizedBox(height: 9),
          Text(
            service.shortDescription,
            style: const TextStyle(
              color: mintDark,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 15),
          Text(service.description, style: const TextStyle(color: muted)),
          const SizedBox(height: 18),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              SmallTag(icon: Icons.schedule, label: service.duration),
              SmallTag(icon: Icons.sell_outlined, label: service.price),
            ],
          ),
          const SizedBox(height: 22),
          const Text(
            'Ce soin peut vous accompagner pour',
            style: TextStyle(
              color: ink,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          ...service.bullets.map((item) => BulletLine(text: item)),
          const SizedBox(height: 10),
          const InfoCard(
            title: 'À retenir',
            text:
                'La Luxopuncture est une méthode de bien-être complémentaire. Elle ne remplace pas un diagnostic, un traitement ou un suivi médical.',
            icon: Icons.info_outline,
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () {
              onBook(service);
              Navigator.pop(context);
            },
            style: primaryButton(),
            icon: const Icon(Icons.calendar_month_outlined),
            label: const Text('Réserver ce soin'),
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: () => openExternalUrl(calendlyUrl),
            style: secondaryButton(),
            icon: const Icon(Icons.open_in_new),
            label: const Text('Voir les disponibilités sur Calendly'),
          ),
        ],
      ),
    );
  }
}

class BookingPage extends StatefulWidget {
  const BookingPage({
    super.key,
    required this.initialService,
    required this.onBooked,
    required this.onMore,
  });

  final ServiceItem? initialService;
  final ValueChanged<Appointment> onBooked;
  final VoidCallback onMore;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  late ServiceItem selectedService;
  DateTime selectedDate = DateTime.now().add(const Duration(days: 1));
  String selectedTime = '10:00';
  int step = 0;

  static const timeSlots = [
    '09:00',
    '10:00',
    '11:30',
    '14:00',
    '15:30',
    '17:00',
  ];

  @override
  void initState() {
    super.initState();
    selectedService = widget.initialService ?? services.first;
  }

  @override
  void didUpdateWidget(covariant BookingPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialService != null &&
        widget.initialService != oldWidget.initialService) {
      selectedService = widget.initialService!;
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void submit() {
    if (!formKey.currentState!.validate()) return;
    final value = Appointment(
      service: selectedService.title,
      date: selectedDate,
      time: selectedTime,
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      phone: phoneController.text.trim(),
    );
    widget.onBooked(value);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Demande enregistrée dans le prototype.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        TopBar(
          title: 'Rendez-vous',
          subtitle: 'Un parcours simple en trois étapes',
          onProfile: () {},
          onMore: widget.onMore,
        ),
        const SizedBox(height: 22),
        const SectionHeading(
          eyebrow: 'PRENDRE SOIN DE SOI',
          title: 'Planifier une séance',
          subtitle:
              'Choisissez votre accompagnement, puis le créneau qui vous convient.',
        ),
        const SizedBox(height: 20),
        StepIndicator(step: step),
        const SizedBox(height: 22),
        if (step == 0) _buildServiceStep(),
        if (step == 1) _buildDateStep(),
        if (step == 2) _buildContactStep(),
      ],
    );
  }

  Widget _buildServiceStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FormStepTitle(
          number: '01',
          title: 'Choisissez votre soin',
          subtitle: 'Chaque accompagnement est présenté avec sa durée.',
        ),
        const SizedBox(height: 14),
        LayoutBuilder(
          builder: (context, constraints) {
            final columns = constraints.maxWidth > 780
                ? 3
                : constraints.maxWidth > 500
                    ? 2
                    : 1;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: services.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: columns == 1 ? 4.2 : 1.55,
              ),
              itemBuilder: (context, index) {
                final service = services[index];
                final selected = service.title == selectedService.title;
                return Material(
                  color: selected ? mintWash : Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  child: InkWell(
                    onTap: () => setState(() => selectedService = service),
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: selected ? mintDark : borderColor,
                          width: selected ? 1.5 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          SmartImage(
                            asset: service.imageAsset,
                            width: 58,
                            height: 58,
                            radius: 14,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  service.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: ink,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  service.duration,
                                  style: const TextStyle(
                                    color: muted,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            selected
                                ? Icons.check_circle
                                : Icons.radio_button_unchecked,
                            color: selected ? mintDark : borderColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(height: 18),
        FilledButton.icon(
          onPressed: () => setState(() => step = 1),
          style: primaryButton(),
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Continuer'),
        ),
        const SizedBox(height: 10),
        OutlinedButton.icon(
          onPressed: () => openExternalUrl(calendlyUrl),
          style: secondaryButton(),
          icon: const Icon(Icons.open_in_new),
          label: const Text('Réserver directement sur Calendly'),
        ),
      ],
    );
  }

  Widget _buildDateStep() {
    final dates = List.generate(
      10,
      (index) => DateTime.now().add(Duration(days: index + 1)),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FormStepTitle(
          number: '02',
          title: 'Choisissez une date et une heure',
          subtitle: 'Les créneaux ci-dessous sont proposés pour le prototype.',
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 94,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dates.length,
            separatorBuilder: (_, index) => const SizedBox(width: 9),
            itemBuilder: (context, index) {
              final date = dates[index];
              final selected = date.day == selectedDate.day &&
                  date.month == selectedDate.month;
              return GestureDetector(
                onTap: () => setState(() => selectedDate = date),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: 72,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: selected ? mint : Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: selected ? mintDark : borderColor,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        weekdayLabel(date.weekday),
                        style: TextStyle(
                          color: selected ? ink : muted,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        date.day.toString(),
                        style: TextStyle(
                          color: selected ? ink : ink,
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        monthLabel(date.month),
                        style: TextStyle(
                          color: selected ? ink : muted,
                          fontSize: 11,
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
          'Créneaux disponibles',
          style: TextStyle(color: ink, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 9,
          runSpacing: 9,
          children: timeSlots
              .map(
                (time) => ChoiceChip(
                  label: Text(time),
                  selected: selectedTime == time,
                  onSelected: (_) => setState(() => selectedTime = time),
                  selectedColor: mint,
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    color: selectedTime == time ? mintDark : borderColor,
                  ),
                  labelStyle: TextStyle(
                    color: selectedTime == time ? ink : muted,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
              .toList(),
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
                onPressed: () => setState(() => step = 2),
                style: primaryButton(),
                child: const Text('Continuer'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContactStep() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormStepTitle(
            number: '03',
            title: 'Vos coordonnées',
            subtitle: 'Elles servent uniquement à préparer votre demande.',
          ),
          const SizedBox(height: 15),
          SummaryCard(
            service: selectedService,
            date: selectedDate,
            time: selectedTime,
          ),
          const SizedBox(height: 18),
          TextFormField(
            controller: nameController,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Nom et prénom',
              prefixIcon: Icon(Icons.person_outline),
            ),
            validator: (value) {
              if (value == null || value.trim().length < 2) {
                return 'Veuillez renseigner votre nom.';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Adresse e-mail',
              prefixIcon: Icon(Icons.mail_outline),
            ),
            validator: (value) {
              final email = value?.trim() ?? '';
              if (!RegExp(r'^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$').hasMatch(email)) {
                return 'Veuillez saisir une adresse e-mail valide.';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              labelText: 'Téléphone',
              prefixIcon: Icon(Icons.phone_outlined),
            ),
            validator: (value) {
              final phone = value?.trim() ?? '';
              if (phone.replaceAll(RegExp(r'\\D'), '').length < 8) {
                return 'Veuillez saisir un numéro valide.';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          const DisclaimerCard(),
          const SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => setState(() => step = 1),
                  style: secondaryButton(),
                  child: const Text('Retour'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: FilledButton.icon(
                  onPressed: submit,
                  style: primaryButton(),
                  icon: const Icon(Icons.check),
                  label: const Text('Enregistrer la demande'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: () => openExternalUrl(calendlyUrl),
            style: secondaryButton(),
            icon: const Icon(Icons.open_in_new),
            label: const Text('Ouvrir Calendly'),
          ),
        ],
      ),
    );
  }
}

class SpacePage extends StatelessWidget {
  const SpacePage({
    super.key,
    required this.appointment,
    required this.onBook,
    required this.onCancel,
    required this.onMore,
  });

  final Appointment? appointment;
  final VoidCallback onBook;
  final VoidCallback onCancel;
  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    return AppScroll(
      children: [
        TopBar(
          title: 'Mon espace',
          subtitle: 'Retrouvez vos informations utiles',
          onProfile: () {},
          onMore: onMore,
        ),
        const SizedBox(height: 22),
        const SectionHeading(
          eyebrow: 'VOTRE SUIVI',
          title: 'Un espace simple et personnel',
          subtitle:
              'Consultez votre demande de rendez-vous ou contactez directement le centre.',
        ),
        const SizedBox(height: 18),
        if (appointment == null)
          EmptyAppointment(onBook: onBook)
        else
          AppointmentCard(appointment: appointment, onCancel: onCancel),
        const SizedBox(height: 18),
        const InfoCard(
          title: 'Prototype de réservation',
          text:
              'La demande est conservée pendant cette session de démonstration. La prochaine étape consistera à la connecter à Firestore et à un agenda réel.',
          icon: Icons.cloud_outlined,
        ),
        const SizedBox(height: 18),
        ContactShortcutCard(onMore: onMore),
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
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: mintWash,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.event_available_outlined,
              color: mintDark,
              size: 36,
            ),
          ),
          const SizedBox(height: 13),
          const Text(
            'Aucun rendez-vous enregistré',
            style: TextStyle(color: ink, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 7),
          const Text(
            'Planifiez une séance pour tester le parcours.',
            textAlign: TextAlign.center,
            style: TextStyle(color: muted),
          ),
          const SizedBox(height: 17),
          FilledButton.icon(
            onPressed: onBook,
            style: primaryButton(),
            icon: const Icon(Icons.calendar_month_outlined),
            label: const Text('Planifier une séance'),
          ),
        ],
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointment,
    required this.onCancel,
  });

  final Appointment appointment;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFEFFBF8), Color(0xFFF7F2FF)],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFDDEFEA)),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                padding: const EdgeInsets.symmetric(vertical: 11),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    Text(
                      appointment.date.day.toString(),
                      style: const TextStyle(
                        color: mintDark,
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      monthLabel(appointment.date.month),
                      style: const TextStyle(
                        color: muted,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Votre demande',
                      style: TextStyle(
                        color: mintDark,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      appointment.service,
                      style: const TextStyle(
                        color: ink,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      weekdayLabel(appointment.date.weekday) +
                          ' ' +
                          appointment.date.day.toString() +
                          ' · ' +
                          appointment.time,
                      style: const TextStyle(color: muted),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      appointment.name,
                      style: const TextStyle(color: muted, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onCancel,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.redAccent,
                    minimumSize: const Size.fromHeight(44),
                    side: const BorderSide(color: Colors.redAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: const Text('Annuler'),
                ),
              ),
              const SizedBox(width: 9),
              Expanded(
                child: FilledButton(
                  onPressed: () => openExternalUrl(calendlyUrl),
                  style: primaryButton(),
                  child: const Text('Contacter'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactShortcutCard extends StatelessWidget {
  const ContactShortcutCard({super.key, required this.onMore});

  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMore,
      borderRadius: BorderRadius.circular(22),
      child: Ink(
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: borderColor),
        ),
        child: const Row(
          children: [
            CircleAvatar(
              backgroundColor: lavenderWash,
              child: Icon(Icons.place_outlined, color: lavender),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Centre de Luxopuncture',
                    style: TextStyle(color: ink, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '28 impasse des Acacias · Bouc-Bel-Air',
                    style: TextStyle(color: muted, fontSize: 12),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: lavender, size: 17),
          ],
        ),
      ),
    );
  }
}

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'Plus',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'CL AULUXO',
            title: 'Tout ce qu’il faut savoir',
            subtitle:
                'Informations, tarifs, contact et questions fréquentes réunis au même endroit.',
          ),
          const SizedBox(height: 20),
          SectionMenuTile(
            icon: Icons.person_outline,
            title: 'À propos',
            subtitle: 'Claudine Amérigo et son approche',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AboutPage()),
            ),
          ),
          SectionMenuTile(
            icon: Icons.light_mode_outlined,
            title: 'La Luxopuncture',
            subtitle: 'Comprendre la méthode',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LuxopuncturePage()),
            ),
          ),
          SectionMenuTile(
            icon: Icons.sell_outlined,
            title: 'Tarifs',
            subtitle: 'Séances et programmes',
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
          SectionMenuTile(
            icon: Icons.contact_mail_outlined,
            title: 'Contact et itinéraire',
            subtitle: 'Adresse, téléphone et Google Maps',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ContactPage()),
            ),
          ),
          SectionMenuTile(
            icon: Icons.gavel_outlined,
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
                'Une expérience mobile et Web inspirée de l’univers doux, lumineux et bienveillant de clauluxo.fr.',
            icon: Icons.spa_outlined,
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'À propos',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SmartImage(
              asset: 'assets/site/about.jpg',
              width: double.infinity,
              height: 230,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Claudine Amérigo',
            style: TextStyle(
              color: ink,
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Praticienne et directrice du centre de Luxopuncture',
            style: TextStyle(
              color: mintDark,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Je vous accompagne vers un mieux-être durable grâce à une méthode douce, naturelle et non invasive. Chaque séance est personnalisée selon vos besoins : gestion du stress, amélioration du sommeil, accompagnement dans la perte de poids ou recherche d’un meilleur équilibre émotionnel.',
            style: TextStyle(color: muted, height: 1.55),
          ),
          const SizedBox(height: 16),
          const InfoCard(
            title: 'Une écoute avant tout',
            text:
                'Le centre propose un cadre calme et bienveillant pour prendre le temps d’échanger, définir vos objectifs et construire un accompagnement adapté.',
            icon: Icons.favorite_border,
          ),
        ],
      ),
    );
  }
}

class LuxopuncturePage extends StatelessWidget {
  const LuxopuncturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'La Luxopuncture',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'UNE APPROCHE DOUCE',
            title: 'Le bien-être par la lumière',
            subtitle:
                'Une stimulation de points réflexes grâce à une lumière infrarouge contrôlée.',
          ),
          const SizedBox(height: 20),
          const InfoCard(
            title: 'Comment ça fonctionne ?',
            text:
                'La Luxopuncture agit par stimulation de points réflexes avec une lumière infrarouge. La séance est indolore et s’inscrit dans une démarche complémentaire de bien-être.',
            icon: Icons.light_mode_outlined,
          ),
          const SizedBox(height: 20),
          const Text(
            'Les bénéfices recherchés',
            style: TextStyle(
              color: ink,
              fontSize: 21,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          const BulletLine(text: 'Réduction du stress et de l’anxiété'),
          const BulletLine(text: 'Amélioration du sommeil'),
          const BulletLine(text: 'Aide à la gestion du poids'),
          const BulletLine(text: 'Augmentation de l’énergie et de la vitalité'),
          const BulletLine(text: 'Diminution des tensions et des compulsions'),
          const SizedBox(height: 12),
          const DisclaimerCard(),
        ],
      ),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'Tarifs',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'DES FORMULES ADAPTÉES',
            title: 'Tarifs et programmes',
            subtitle:
                'Les modalités sont précisées lors de l’échange avec le centre selon votre objectif.',
          ),
          const SizedBox(height: 18),
          PricingTile(
            title: 'Séance découverte',
            subtitle: 'Un premier échange et une séance adaptée à votre besoin.',
            icon: Icons.auto_awesome_outlined,
            action: () => openExternalUrl(calendlyUrl),
          ),
          PricingTile(
            title: 'Programme sommeil & stress',
            subtitle: 'Un accompagnement progressif pour retrouver calme et récupération.',
            icon: Icons.nightlight_outlined,
            action: () => openExternalUrl(calendlyUrl),
          ),
          PricingTile(
            title: 'Programme perte de poids',
            subtitle: 'Un parcours personnalisé autour de vos habitudes et objectifs.',
            icon: Icons.balance,
            action: () => openExternalUrl(calendlyUrl),
          ),
          PricingTile(
            title: 'Arrêt du tabac',
            subtitle: 'Programme complet de 7 séances proposé par le centre.',
            icon: Icons.eco_outlined,
            action: () => openExternalUrl(calendlyUrl),
          ),
          const SizedBox(height: 12),
          const InfoCard(
            title: 'Besoin d’un tarif précis ?',
            text:
                'Contactez directement le centre ou ouvrez Calendly pour connaître les disponibilités et les modalités actuelles.',
            icon: Icons.phone_outlined,
          ),
        ],
      ),
    );
  }
}

class PricingTile extends StatelessWidget {
  const PricingTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.action,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
        child: InkWell(
          onTap: action,
          borderRadius: BorderRadius.circular(19),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: lavenderWash,
                  child: Icon(icon, color: lavender),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: muted,
                          fontSize: 12,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: lavender, size: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  static const questions = <MapEntry<String, String>>[
    MapEntry(
      'Combien de temps dure une séance ?',
      'Une séance dure généralement entre 20 et 30 minutes.',
    ),
    MapEntry(
      'La séance est-elle douloureuse ?',
      'La Luxopuncture est présentée comme une méthode douce et non invasive. La séance est indolore.',
    ),
    MapEntry(
      'Quels objectifs peut-on accompagner ?',
      'Le centre propose des accompagnements autour du stress, du sommeil, du poids, de l’arrêt du tabac, de la vitalité, de la beauté et de la ménopause.',
    ),
    MapEntry(
      'La Luxopuncture remplace-t-elle un suivi médical ?',
      'Non. Elle s’inscrit dans une démarche complémentaire de bien-être et ne remplace jamais un diagnostic ou un traitement médical.',
    ),
    MapEntry(
      'Comment prendre rendez-vous ?',
      'Vous pouvez utiliser le parcours de réservation de l’application ou ouvrir le calendrier Calendly du centre.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'FAQ',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'BESOIN D’UNE RÉPONSE ?',
            title: 'Questions fréquentes',
            subtitle:
                'Ouvrez une question pour afficher sa réponse.',
          ),
          const SizedBox(height: 16),
          ...questions.map(
            (question) => Card(
              margin: const EdgeInsets.only(bottom: 9),
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
                side: const BorderSide(color: borderColor),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                iconColor: lavender,
                collapsedIconColor: muted,
                title: Text(
                  question.key,
                  style: const TextStyle(
                    color: ink,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      question.value,
                      style: const TextStyle(color: muted, height: 1.45),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: 'Contact et itinéraire',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'VENIR AU CENTRE',
            title: 'Nous contacter',
            subtitle:
                'Retrouvez l’adresse, le plan et les accès directs vers le centre.',
          ),
          const SizedBox(height: 18),
          const InfoCard(
            title: 'Centre de Luxopuncture',
            text: 'Claudine Amérigo',
            icon: Icons.spa_outlined,
          ),
          const SizedBox(height: 12),
          const DetailLine(
            icon: Icons.place_outlined,
            label: 'Adresse',
            value: '28 impasse des Acacias · 13320 Bouc-Bel-Air',
          ),
          const DetailLine(
            icon: Icons.phone_outlined,
            label: 'Téléphone',
            value: '+33 6 20 98 58 06',
          ),
          const DetailLine(
            icon: Icons.mail_outline,
            label: 'E-mail',
            value: 'contact@luxotherapie-amerigo.com',
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: SizedBox(
              height: 270,
              width: double.infinity,
              child: buildGoogleMapEmbed(),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: () => openExternalUrl(mapUrl),
            style: primaryButton(),
            icon: const Icon(Icons.directions_outlined),
            label: const Text('Ouvrir l’itinéraire'),
          ),
          const SizedBox(height: 9),
          OutlinedButton.icon(
            onPressed: () => openExternalUrl(officialSite),
            style: secondaryButton(),
            icon: const Icon(Icons.language),
            label: const Text('Visiter le site officiel'),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 9,
            runSpacing: 9,
            children: [
              OutlinedButton.icon(
                onPressed: () => openExternalUrl(phoneUrl),
                icon: const Icon(Icons.phone_outlined),
                label: const Text('Téléphoner'),
              ),
              OutlinedButton.icon(
                onPressed: () => openExternalUrl(emailUrl),
                icon: const Icon(Icons.mail_outline),
                label: const Text('Envoyer un e-mail'),
              ),
              OutlinedButton.icon(
                onPressed: () => openExternalUrl(calendlyUrl),
                icon: const Icon(Icons.calendar_month_outlined),
                label: const Text('Calendly'),
              ),
              OutlinedButton.icon(
                onPressed: () => openExternalUrl(instagramUrl),
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('Instagram'),
              ),
              OutlinedButton.icon(
                onPressed: () => openExternalUrl(facebookUrl),
                icon: const Icon(Icons.facebook),
                label: const Text('Facebook'),
              ),
            ],
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
      title: 'Mentions légales',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Version prototype',
            style: TextStyle(
              color: ink,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Cette version de démonstration ne collecte pas encore les demandes de rendez-vous dans une base distante. Les données saisies restent limitées à la session en cours.',
            style: TextStyle(color: muted, height: 1.5),
          ),
          SizedBox(height: 18),
          Text(
            'Avant la mise en production, les mentions légales et la politique de confidentialité devront être reprises intégralement depuis le site officiel et complétées pour le traitement des demandes.',
            style: TextStyle(color: muted, height: 1.5),
          ),
          SizedBox(height: 18),
          DisclaimerCard(),
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
    required this.paragraphs,
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
            radius: 29,
            backgroundColor: lavenderWash,
            child: Icon(icon, color: lavender, size: 28),
          ),
          const SizedBox(height: 17),
          ...paragraphs.map(
            (text) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Text(
                text,
                style: const TextStyle(color: muted, height: 1.55),
              ),
            ),
          ),
          if (bullets.isNotEmpty) ...[
            const SizedBox(height: 4),
            const Text(
              'Les principaux bénéfices',
              style: TextStyle(
                color: ink,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            ...bullets.map((text) => BulletLine(text: text)),
          ],
          if (numbered.isNotEmpty) ...[
            const SizedBox(height: 6),
            const Text(
              'Le déroulement',
              style: TextStyle(
                color: ink,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            ...numbered.asMap().entries.map(
                  (entry) => NumberLine(
                    number: entry.key + 1,
                    text: entry.value,
                  ),
                ),
          ],
        ],
      ),
    );
  }
}

class DetailScaffold extends StatelessWidget {
  const DetailScaffold({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softBackground,
      appBar: AppBar(
        backgroundColor: softBackground,
        foregroundColor: ink,
        elevation: 0,
        title: Text(
          title,
          style: const TextStyle(
            color: ink,
            fontWeight: FontWeight.w800,
          ),
        ),
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
        final width = constraints.maxWidth > 1180
            ? 1180.0
            : constraints.maxWidth;
        return Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: width,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 34),
              children: children,
            ),
          ),
        );
      },
    );
  }
}

class FormStepTitle extends StatelessWidget {
  const FormStepTitle({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle,
  });

  final String number;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 43,
          height: 43,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: mint,
            shape: BoxShape.circle,
          ),
          child: Text(
            number,
            style: const TextStyle(
              color: ink,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: ink,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: muted, height: 1.4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StepIndicator extends StatelessWidget {
  const StepIndicator({super.key, required this.step});

  final int step;

  @override
  Widget build(BuildContext context) {
    const labels = ['Soin', 'Date & heure', 'Coordonnées'];
    return Row(
      children: List.generate(
        labels.length,
        (index) => Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  if (index > 0)
                    Expanded(
                      child: Container(
                        height: 2,
                        color: index <= step ? mint : borderColor,
                      ),
                    ),
                  Container(
                    width: 31,
                    height: 31,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: index <= step ? mint : borderColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: index <= step ? ink : muted,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  if (index < labels.length - 1)
                    Expanded(
                      child: Container(
                        height: 2,
                        color: index < step ? mint : borderColor,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                labels[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: index == step ? mintDark : muted,
                  fontSize: 11,
                  fontWeight: index == step ? FontWeight.w800 : FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.service,
    required this.date,
    required this.time,
  });

  final ServiceItem service;
  final DateTime date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: mintWash,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFC8EEE7)),
      ),
      child: Row(
        children: [
          SmartImage(
            asset: service.imageAsset,
            width: 64,
            height: 64,
            radius: 15,
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service.title,
                  style: const TextStyle(
                    color: ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  weekdayLabel(date.weekday) +
                      ' ' +
                      date.day.toString() +
                      ' ' +
                      monthLabel(date.month) +
                      ' · ' +
                      time,
                  style: const TextStyle(color: muted, fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(Icons.check_circle, color: mintDark),
        ],
      ),
    );
  }
}

class ResponsiveSectionTitle extends StatelessWidget {
  const ResponsiveSectionTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: ink,
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 4),
        Text(subtitle, style: const TextStyle(color: muted)),
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
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(19),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: lavenderWash,
                  child: Icon(icon, color: lavender),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        subtitle,
                        style: const TextStyle(color: muted, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: lavender,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallTag extends StatelessWidget {
  const SmallTag({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: softBackground,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: lavender),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              color: muted,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class SmartImage extends StatelessWidget {
  const SmartImage({
    super.key,
    required this.asset,
    this.width,
    this.height,
    this.radius = 0,
  });

  final String asset;
  final double? width;
  final double? height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        asset,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: width,
            height: height,
            color: mintWash,
            alignment: Alignment.center,
            child: const Icon(
              Icons.spa_outlined,
              color: mintDark,
              size: 30,
            ),
          );
        },
      ),
    );
  }
}

class AboutPreview extends StatelessWidget {
  const AboutPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final image = ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SmartImage(
              asset: 'assets/site/about.jpg',
              width: double.infinity,
              height: 205,
            ),
          );
          const copy = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Claudine Amérigo',
                style: TextStyle(
                  color: ink,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Directrice du centre de Luxopuncture',
                style: TextStyle(color: mintDark, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 12),
              Text(
                'Une approche douce, naturelle et personnalisée pour vous accompagner vers un mieux-être durable.',
                style: TextStyle(color: muted, height: 1.5),
              ),
            ],
          );
          if (constraints.maxWidth < 700) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [image, const SizedBox(height: 15), copy],
            );
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
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: lavenderWash,
            child: Icon(icon, color: lavender),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
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

class DisclaimerCard extends StatelessWidget {
  const DisclaimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBF0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFF5E4AF)),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: Color(0xFFB2851B), size: 20),
          SizedBox(width: 9),
          Expanded(
            child: Text(
              'La Luxopuncture est une démarche complémentaire de bien-être et ne remplace pas un suivi médical.',
              style: TextStyle(
                color: Color(0xFF80651F),
                fontSize: 12,
                height: 1.4,
              ),
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
          const Icon(Icons.check_circle_outline, color: mintDark, size: 21),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: ink, height: 1.4),
            ),
          ),
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
            backgroundColor: mint,
            child: Text(
              number.toString(),
              style: const TextStyle(
                color: ink,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: muted, height: 1.45),
            ),
          ),
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
            width: 82,
            child: Text(
              label,
              style: const TextStyle(color: muted, fontSize: 12),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: ink,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String weekdayLabel(int weekday) {
  const labels = [
    'Lun.',
    'Mar.',
    'Mer.',
    'Jeu.',
    'Ven.',
    'Sam.',
    'Dim.',
  ];
  return labels[weekday - 1];
}

String monthLabel(int month) {
  const labels = [
    'jan.',
    'fév.',
    'mars',
    'avr.',
    'mai',
    'juin',
    'juil.',
    'août',
    'sept.',
    'oct.',
    'nov.',
    'déc.',
  ];
  return labels[month - 1];
}

ButtonStyle primaryButton() {
  return FilledButton.styleFrom(
    backgroundColor: mint,
    foregroundColor: ink,
    minimumSize: const Size.fromHeight(50),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    textStyle: const TextStyle(fontWeight: FontWeight.w800),
  );
}

ButtonStyle secondaryButton() {
  return OutlinedButton.styleFrom(
    foregroundColor: lavender,
    minimumSize: const Size.fromHeight(50),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    side: const BorderSide(color: lavender),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    textStyle: const TextStyle(fontWeight: FontWeight.w700),
  );
}
