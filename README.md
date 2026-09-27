# PROSEN Delivery V11 — Wave + Orange Money

## Wave: intégration prête
La V11 utilise la Checkout API Wave côté serveur.
Endpoint:
`POST /api/payments/create`
Body:
`{"orderId":"...","provider":"wave"}`

Le serveur crée une checkout session Wave et renvoie `checkoutUrl`.
La clé Wave reste uniquement côté serveur.

Wave exige un compte Wave Business et une API key. Les API keys permettent des opérations sensibles et doivent rester secrètes. Les requêtes sont faites en HTTPS. Voir la documentation officielle Wave:
https://docs.wave.com/business
https://docs.wave.com/checkout

### Webhook Wave
Endpoint:
`POST /webhooks/wave`

En production, enregistrer cette URL HTTPS dans le Wave Business Portal et configurer le secret/signature selon la configuration du compte. Le webhook doit être idempotent et utiliser l'ID d'événement pour éviter les doublons.

## Orange Money: architecture prête, activation dépend du compte marchand
Orange Money Web Payment est disponible au Sénégal pour les marchands Orange Money. L'accès nécessite une souscription/validation marchand auprès d'Orange. Les identifiants et paramètres exacts sont délivrés dans le portail Orange Developer / par l'équipe locale.

Variables:
- ORANGE_CLIENT_ID
- ORANGE_CLIENT_SECRET
- ORANGE_API_KEY
- ORANGE_MERCHANT_ID
- ORANGE_ENV

La V11 refuse volontairement d'inventer une URL ou des paramètres de paiement Orange qui ne sont pas encore fournis pour le compte marchand PROSEN.

Documentation officielle Orange:
https://developer.orange.com/apis/om-webpay
https://developer.orange.com/apis/om-webpay/faq

## Test local
```bash
npm install
npm start
```

Admin:
`admin / admin123`

## Production
Sur Render:
- connecter GitHub
- `npm install`
- `npm start`
- ajouter les variables du `.env.example`

## Étape nécessaire pour rendre les paiements réellement actifs
1. Ouvrir un compte Wave Business et récupérer la clé API.
2. Souscrire à Orange Money Web Payment pour le compte marchand PROSEN.
3. Récupérer les credentials Orange.
4. Mettre les secrets dans Render, jamais dans GitHub.
5. Configurer les webhooks HTTPS.
6. Tester en environnement prévu par chaque fournisseur.
7. Passer en production après validation.

La V11 ne simule pas un paiement réussi: sans credentials réels, elle refuse proprement au lieu de prétendre qu'un paiement a été encaissé.
