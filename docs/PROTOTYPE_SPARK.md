# Clauluxo — Prototype Firebase Spark

## Décision

Prototype autorisé sur le forfait Firebase Spark, avec un objectif de coût d’environ 0 €/mois.

## Périmètre du prototype

- application Flutter Web/PWA consultable sur Android, iPhone et iPad ;
- contenu Clauluxo local et stable ;
- services, tarifs, FAQ, contact et parcours de démonstration ;
- assets locaux ;
- aucune réservation réelle stockée dans Firebase ;
- aucun SMS, aucune Cloud Function et aucun stockage utilisateur.

## Services autorisés dans ce prototype

- Firebase Core lorsque le projet Firebase sera identifié ;
- Firebase Hosting sur les quotas gratuits ;
- éventuellement Authentication email et Firestore après vérification du besoin.

## Services interdits sans nouvelle validation

- passage à Blaze ;
- Firebase Storage ;
- Phone Authentication/SMS ;
- Cloud Functions et autres services Google Cloud payants ;
- Apple Developer, TestFlight et App Store.

## Informations nécessaires pour la connexion

Ne pas inventer de project ID, d’App ID, de clé API ou de Sender ID. La configuration FlutterFire sera générée seulement après connexion à Firebase Console et sélection du projet réel.

## Application Web enregistrée

Application Firebase : **Clauluxo Web Prototype**. L’enregistrement Web est terminé dans le projet Spark. La configuration Web du prototype est maintenant ajoutée dans le projet Flutter. Android et iOS restent volontairement en attente de l’enregistrement de leurs applications et de leurs identifiants propres.

## Projet Firebase

Project ID confirmé : clauluxo-c5de9. Console : https://console.firebase.google.com/project/clauluxo-c5de9/overview

## Prochaine action technique

1. créer ou sélectionner un projet Firebase Spark ;
2. noter le project ID réel ;
3. exécuter FlutterFire Configure pour les plateformes autorisées ;
4. vérifier les quotas et règles ;
5. compiler la PWA et l’APK prototype ;
6. déployer uniquement si la configuration Firebase est confirmée.
