# ClauLuxo Équilibre — UI/UX V3

Cette version applique la direction visuelle validée pour l’application ClauLuxo : une interface mobile-first, premium, lumineuse et plus simple à utiliser tout en conservant l’identité de clauluxo.fr.

## Identité visuelle

- Mint principal : \`#59D4C4\`
- Turquoise d’action : \`#24BFAE\`
- Lavande : \`#9069FF\`
- Fond : blanc cassé \`#F8F9F7\`
- Texte : gris profond \`#30343B\`
- Police d’interface : Inter
- Police décorative disponible : Sacramento
- Logo : symbole rond de la version 0 conservé et présenté dans un conteneur compact adapté aux interfaces récentes.

## Navigation adaptative

- Smartphone : barre inférieure à quatre onglets — Accueil, Soins, Rendez-vous, Mon espace.
- Tablette : rail latéral compact.
- Ordinateur : navigation latérale étendue avec adresse du centre.
- Menu Plus : À propos, Luxopuncture, Tarifs, FAQ, Contact, Google Maps et mentions légales.

## Accueil

- Barre supérieure compacte avec logo, profil et menu.
- Carrousel tactile plein format avec images officielles et un visuel généré pour ClauLuxo.
- Flèches, indicateurs de page, balayage tactile et boutons d’action.
- Bouton prioritaire « Prendre rendez-vous ».
- Accès secondaire « Explorer les soins ».
- Trois bénéfices lisibles : écoute, douceur et équilibre.
- Aperçu des soins dans un carrousel horizontal.
- Présentation de Claudine Amérigo et rappel de la démarche complémentaire de bien-être.

## Soins

- Recherche textuelle.
- Filtres horizontaux : Tous, Stress, Sommeil, Poids, Vitalité, Beauté et Ménopause.
- Grille responsive : une colonne sur smartphone, deux sur tablette, trois sur desktop.
- Cartes entièrement cliquables avec image, bénéfice, durée, catégorie et bouton.
- Page détaillée avec photo, description, bénéfices, durée, avertissement bien-être et réservation.

## Rendez-vous

Parcours local de démonstration en trois étapes :

1. choix du soin ;
2. choix de la date et du créneau ;
3. coordonnées avec validation renforcée du nom, de l’e-mail et du téléphone.

Calendly reste disponible comme parcours externe réel jusqu’à la connexion future à Firestore et à un agenda.

## Contact et carte

- Google Maps intégré sur le Web sans clé payante.
- Sur mobile, bouton d’itinéraire Google Maps.
- Téléphone, e-mail, site officiel, Facebook, Instagram et Calendly accessibles.
- Adresse de référence : 28 impasse des Acacias, 13320 Bouc-Bel-Air.

## Principes d’ergonomie

- Zones tactiles d’au moins 48 dp pour les actions principales.
- Hiérarchie visuelle courte et lisible.
- États vides, erreur image et confirmation traités.
- Contrastes renforcés.
- Cartes sans grandes zones vides.
- Photos locales déclarées dans \`pubspec.yaml\`.
- Animations courtes et discrètes.

## Validation

À exécuter depuis Cloud Shell :

\`\`\`bash
flutter pub get
flutter analyze
flutter test
flutter build web --release --no-wasm-dry-run
flutter build apk --release
\`\`\`

Puis publier le dossier \`build/web\` sur Firebase Hosting Spark.
