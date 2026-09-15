# Analyse financière Firebase / Apple — Clauluxo

Date d’analyse : 15 septembre 2026.

## Statut

Aucun moyen de paiement n’a été ajouté. Aucun service payant n’est activé.

## Références officielles

- Firebase : https://firebase.google.com/pricing
- Apple Developer : https://developer.apple.com/programs/whats-included/

## Synthèse

| Élément | Gratuité / obligation | Estimation Clauluxo |
|---|---|---|
| Firebase Spark | Pas de moyen de paiement requis | 0 €/mois pour une PWA statique et un prototype local |
| Firebase Hosting | Quotas gratuits : 10 GB stockage et 360 MB/jour de transfert | 0 €/mois si les quotas sont respectés |
| Firestore | Quotas gratuits : 1 GiB, 20 000 écritures/jour, 50 000 lectures/jour, 20 000 suppressions/jour | 0 €/mois estimé pour 5 à 1 000 utilisateurs avec usage modéré |
| Authentication email | Jusqu’à 50 000 utilisateurs actifs mensuels sans coût selon la page Firebase | 0 €/mois estimé |
| App Distribution | Sans coût | 0 €/mois estimé |
| Cloud Messaging | Sans coût | 0 €/mois estimé |
| Storage | Nécessite le forfait pay-as-you-go pour les buckets concernés | Non nécessaire en Phase 1 ; ne pas activer |
| Apple Developer | 99 USD par année d’adhésion | Obligatoire uniquement pour iOS natif/TestFlight/App Store |
| PWA sur iPhone/iPad | Aucun abonnement Apple requis | 0 € |

## Scénarios indicatifs

Ces estimations supposent une application légère, peu d’images distantes, pas de vidéo, pas de SMS, pas de Cloud Functions et un usage modéré de Firestore.

- 5–20 testeurs : 0 €/mois sur Spark ; iOS natif toujours 0 € sans Apple Developer.
- 100 utilisateurs actifs/mois : environ 0 €/mois sur les quotas gratuits.
- 1 000 utilisateurs actifs/mois : environ 0 €/mois si les quotas de lecture/écriture et le transfert Hosting restent respectés.
- 5 000 utilisateurs actifs/mois : probablement encore faible, mais contrôle réel des lectures Firestore, du trafic Hosting et du stockage nécessaire avant décision.

## Point de vigilance

Blaze signifie que la facturation Google est activée, même si la consommation prévue est proche de 0 €. Il faut donc configurer des alertes et des limites avant toute utilisation. Phone Authentication, Storage au-delà des quotas, Cloud Functions et autres produits Google Cloud peuvent générer des frais.

## Décision à valider

A — rester sur Spark et utiliser uniquement la PWA ;

B — activer Blaze avec contrôle budgétaire ;

C — souscrire Apple Developer pour iOS/TestFlight ;

D — activer Blaze et Apple Developer.

Aucune option n’est sélectionnée automatiquement.
