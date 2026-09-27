# PROSEN Delivery V14 — Client ↔ Livreur

Application de livraison à la demande. Aucun catalogue de produits.

## Parcours client
Créer une livraison → départ → destination → détails du colis → recherche d'un livreur → suivi des statuts → livraison → paiement direct au livreur.

## Parcours livreur
Créer un compte → passer en ligne → recevoir les courses → accepter → récupérer le colis → partir vers le destinataire → marquer livré → confirmer le paiement reçu.

## Paiement
PROSEN ne collecte pas les fonds. Le client paie directement le livreur. L'application conserve uniquement l'état `unpaid` / `paid_direct`.

## Démo sans base cloud
`npm install` puis `npm start`. Sans DATABASE_URL, les données sont stockées dans `data.json` pour test local. Comptes démo : 770000001 / Demo1234! (client), 770000002 / Demo1234! (livreur).

## Production
Configurer `DATABASE_URL`, `JWT_SECRET` et `PUBLIC_APP_URL` sur Render. Utiliser HTTPS pour la géolocalisation navigateur et les notifications web.
