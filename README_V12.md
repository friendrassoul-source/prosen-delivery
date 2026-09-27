# PROSEN Delivery V12 — paiements sécurisés

Cette version corrige le traitement du webhook Wave et ajoute un vrai suivi de paiement.

### Wave
- Checkout serveur via l'API Wave.
- Corps brut conservé pour la vérification de signature.
- `WAVE_SIGNING_SECRET` vérifié en production.
- Doublons bloqués par l'ID unique de l'événement.
- Statuts enregistrés : `unpaid`, `pending`, `paid`, `failed`.
- Référence de transaction enregistrée.
- `GET /api/payments/:orderId` permet au client de lire l'état.
- WebSocket `payment_updated` informe immédiatement le client.

Webhook à déclarer dans Wave Business :
`https://TON-DOMAINE/webhooks/wave`

Événements recommandés :
- `checkout.session.completed`
- `checkout.session.payment_failed`

### Orange Money
Le connecteur reste volontairement en préparation tant que le compte marchand Orange Money et les paramètres/API fournis par Orange Sénégal ne sont pas disponibles. Il ne simule pas un paiement.

### Lancement
- Installer Node.js.
- Double-cliquer `INSTALL.bat`.
- Double-cliquer `START.bat`.
- Ouvrir `http://localhost:3000`.

En production : HTTPS + PostgreSQL/Supabase + secrets dans les variables d'environnement.
