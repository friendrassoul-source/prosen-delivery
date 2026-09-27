# PROSEN Delivery V9.1

## Lancement ultra-simple sur Windows

### Première fois
1. Installer Node.js depuis https://nodejs.org/
2. Décompresser ce ZIP.
3. Double-cliquer sur `START.bat`.
4. Le programme installe automatiquement les composants.
5. Chrome s'ouvre automatiquement sur PROSEN Delivery.

### Les fois suivantes
Double-cliquer simplement sur:

`START.bat`

Il démarre le serveur et ouvre automatiquement:
`http://localhost:3000`

### Arrêter
Double-cliquer sur `STOP.bat`.

## Identifiants admin de démonstration
- Identifiant: `admin`
- Mot de passe: `admin123`

## Client / Livreur
Sur l'écran de connexion, utilise "Créer un compte" pour créer un compte client ou livreur.

## Important
Ne lance pas `public/index.html` directement.
Le site doit être lancé avec `START.bat`, car l'authentification et les courses utilisent le serveur Node.js.

## Version cloud
La V9.1 peut toujours être déployée sur un hébergeur Node.js avec PostgreSQL/Supabase.
