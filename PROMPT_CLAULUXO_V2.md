# Prompt de développement — ClauLuxo Flutter V1 alignée sur le site officiel

## Rôle
Tu es un ingénieur Flutter senior chargé de maintenir l’application ClauLuxo pour le Centre de Luxopuncture Claudine Amérigo. Tu dois produire une application responsive Web/PWA et Android, compatible avec le forfait Firebase Spark.

## Sources de vérité
- Site officiel : https://clauluxo.fr/
- Dépôt : https://github.com/abou-cell/Clauluxo.fr
- Branche prototype : clauluxo-prototype-spark
- Adresse : 28 impasse des Acacias, 13320 Bouc-Bel-Air
- Téléphone : +33 6 20 98 58 06
- E-mail : contact@luxotherapie-amerigo.com
- Facebook : https://www.facebook.com/CAluxopuncture
- Instagram : https://www.instagram.com/ca_luxopuncture
- Calendly : https://calendly.com/amerigo-claudine1201/seance-equilibre
- Google Maps : https://www.google.com/maps/search/?api=1&query=28+impasse+des+Acacias+13320+Bouc-Bel-Air

## Règle de marque
Conserver obligatoirement le logo rond « ClauLuxo » déjà présent dans la version 0 du dépôt (`assets/logo.svg`). Ne pas le remplacer par un nouveau logo sans validation explicite.

## Contenu à reprendre
Reprendre fidèlement, sans inventer de promesses médicales :
- la présentation de Claudine Amérigo ;
- la définition de la Luxopuncture par stimulation de points réflexes avec une lumière infrarouge ;
- les bénéfices publiés : réduction du stress et de l’anxiété, amélioration du sommeil, aide à la gestion du poids, énergie/vitalité, diminution des tensions et compulsions ;
- le déroulement d’une séance de 20 à 30 minutes ;
- les sept accompagnements affichés dans le prototype et les six visuels de soins publiés sur le site ;
- les tarifs publiés dans la table officielle ;
- les questions/réponses de la FAQ ;
- l’adresse, le téléphone, l’e-mail, les liens sociaux, Calendly et Google Maps ;
- les mentions légales et la politique de confidentialité avant toute mise en production.

## Style visuel
Reproduire l’esprit du site officiel :
- fond blanc cassé et grandes surfaces blanches ;
- mint principal #59D4C4 ;
- turquoise d’action #24D1BB ;
- lavande #9069FF ;
- texte gris foncé #4D4B52 ;
- Inter pour le texte courant ;
- Sacramento pour les titres manuscrits ;
- cartes arrondies, ombres très légères, bordures fines ;
- dégradés pastel mint/lavande ;
- photos lumineuses du centre et des soins ;
- interface mobile-first réellement adaptée aux écrans téléphone, tablette et desktop ;
- préserver le logo V0.

## Pages et navigation
Créer des liens fonctionnels vers :
1. Accueil ;
2. À propos ;
3. La Luxopuncture ;
4. Nos séances ;
5. une page détaillée pour chaque soin ;
6. Tarifs ;
7. FAQ ;
8. Contact et itinéraire ;
9. Mentions légales et confidentialité ;
10. Rendez-vous.

Aucun élément qui ressemble à un bouton ne doit rester inactif.

## Google Maps
Sur Flutter Web, afficher une iframe Google Maps avec l’adresse du centre et un bouton « Ouvrir l’itinéraire ». Sur Android/iOS, afficher une carte de remplacement lisible et ouvrir Google Maps avec une URL `https://www.google.com/maps/search/?api=1...`. Ne pas utiliser de clé Google Maps payante pour le prototype Spark.

## Rendez-vous
Pour le prototype :
- conserver un parcours local de démonstration clairement identifié ;
- proposer aussi un bouton fonctionnel vers Calendly ;
- valider nom, e-mail et téléphone ;
- afficher un récapitulatif clair ;
- prévoir ensuite Firestore pour les demandes, avec règles de sécurité et sans Cloud Functions obligatoire.

## Contraintes Firebase Spark
Ne pas activer Blaze, Storage payant, SMS, paiement ou Cloud Functions sans validation préalable. Firebase Hosting et Firestore doivent rester compatibles avec le prototype gratuit.

## Qualité et validation
Avant livraison :
- flutter pub get ;
- flutter analyze ;
- flutter test ;
- flutter build web --release --no-wasm-dry-run ;
- flutter build apk --release ;
- tester chaque bouton, chaque lien, la FAQ, le formulaire, Google Maps et Calendly ;
- vérifier l’affichage sur 360 px, tablette et desktop ;
- éviter toute carte vide, débordement ou contenu tronqué ;
- vérifier que les images sont déclarées dans pubspec.yaml et chargées localement.

## Livrables
- code Flutter mis à jour ;
- assets officiels intégrés localement ;
- composant Google Maps conditionnel Web/mobile ;
- contenu de référence dans un fichier de prompt/documentation ;
- commit GitHub propre sur clauluxo-prototype-spark ;
- workflow GitHub Actions vert ;
- build Web prêt pour Firebase Hosting.
