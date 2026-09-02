# Setup Facebook & Blueprint Anti-Ban

> Tu peux avoir les meilleures créatives du monde : si ton compte saute, tu ne
> lances rien. C'est un prérequis technique, pas une option.

## L'architecture Facebook (à comprendre absolument)

```
PROFIL                    ← ton compte Facebook personnel
   │  (possède)
   ↓
PAGE                      ← c'est avec ça que tu fais de la pub
   │  (reliée à)
   ↓
BUSINESS MANAGER (BM)     ← gère les assets
   │  (contient)
   ├── AD ACCOUNTS        ← c'est avec ça que tu dépenses
   └── PIXELS
```

| Élément | Rôle |
|---|---|
| **Profil** | Compte perso. On ne fait PAS de pub avec |
| **Page** | Le logo + nom que les gens voient sur ta pub. Le profil la possède |
| **Business Manager** | Manage. Contient ad accounts et pixels |
| **Ad Account** | Dépense l'argent |

---

## Pourquoi Facebook bloque

| Cause | Détail |
|---|---|
| Activité suspecte | Multiples profils, même IP, cookies similaires, même moyen de paiement |
| Nouveau profil → BM immédiat | Le pire signal |
| Profil utilisé depuis plusieurs pays simultanément | |
| Augmentation rapide des dépenses sur un compte neuf | |
| **Défaut de paiement** | Le tueur n°1 de "trust score" |

**Facteurs pris en compte par Facebook :**
- Ancienneté du profil (plus vieux = mieux)
- Pays d'origine (préférence US / Europe / Australie)
- Activité et interaction du profil
- Historique du BM et des pages
- IP et appareil utilisé

---

## La notion de TRUST SCORE

Facebook attribue un score de confiance. Ce score :
- **Monte** avec l'ancienneté et l'historique propre
- **Descend** à chaque défaut de paiement, chaque ad account qui saute

Plus tu as d'ancienneté, moins une perte de trust fait mal.
Un défaut de paiement → dès le lendemain, chute des performances.

**Symptôme typique :** tu dépenses 100-150 € et tu n'as même pas un like.
→ Shadowban probable. Solution : changer de setup (BM + ad account) et
transférer les pixels.

---

## ✅ Configuration idéale

| Élément | Recommandation |
|---|---|
| **Navigateur anti-détection** | Dolphin Anty, Incogniton (gratuits jusqu'à 10 profils) |
| **Proxies** | 1 proxy résidentiel **dédié** par profil Facebook, IP stable, géolocalisée |
| **Profils** | 3 : 2 admins + 1 employé (c'est l'employé qui gère les Ads) |
| **BM** | 1 principal (Ads) + 1 secondaire optionnel (Pixel) |
| **Ad accounts** | Comptes **agence** (préférable) ou avec historique |
| **Règle** | 1 ad account par domaine et par page |
| **Pages** | Anciennes ou rétablies (reinstated) |

---

## To-do — les bonnes pratiques

### 1. Navigateur anti-détection
Crée une empreinte digitale unique par profil Facebook.

### 2. Proxy
Proxies résidentiels fiables (ex : privateproxy.me). Un par profil.

### 3. Profils & BM
- Toujours **minimum 2 admins** par BM
- **1 profil employé** (accès partiel) pour gérer uniquement les publicités
- ❌ **Ne jamais diffuser de pubs depuis un profil admin**
- Créer la page Facebook depuis un **profil indépendant**, jamais depuis le BM
- Ajouter les profils employés comme éditeurs de cette page

### 4. Warm-up du Business Manager
- Attendre **minimum 24 h** après création du BM avant de lancer des Ads
- Lancer une campagne **Page Like à 5 $/jour** pour valider le paiement et créer
  de l'historique
- **Vérifier manuellement le premier paiement** dans la section facturation
- Créer plusieurs ad accounts dès que possible (jusqu'à 5)

### 5. Comptes publicitaires agence
- Meilleur choix pour réduire drastiquement les risques
- Dépenses quasi illimitées dès le départ (pas de cap à 100 €/jour)
- Récupération facilitée via contact direct avec un représentant Facebook

### 6. Gestion des pages
- Préférer les pages avec historique ou rétablies après vérification
- Remplir entièrement "À propos", mentions légales, politiques
- Poster du contenu organique 2-3 fois/semaine
- Optionnel mais recommandé : lier un compte Instagram

---

## ⛔ Ce qu'il ne faut surtout pas faire

- Gérer les Ads directement avec un profil **admin**
- Créer un nouveau BM immédiatement après création du profil
- Utiliser les mêmes moyens de paiement ou IP sur plusieurs comptes/BM
- Lier directement la page au BM (risque accru si la page est bannie)
- Utiliser des profils récemment créés sans warm-up

---

## 🔥 Bonnes pratiques avancées

- **Séparer chaque activité en BM distincts**
- Toujours avoir des **configurations de secours** prêtes à l'emploi
- Engager un **assistant virtuel** dédié à la gestion de ces setups
- Cartes bancaires avec **cashback** (cashback en miles = très rentable à gros spend)
- ⚠️ **Éviter les banques traditionnelles françaises** (ex : LCL) qui bloquent les
  paiements instantanés Facebook → défauts de paiement à répétition → shadowban.
  Utiliser une néobanque ou une ligne de crédit Facebook.

---

## 📍 Que faire en cas de bannissement

1. **Faire appel via "Autre"** comme motif, en détaillant précisément la situation
2. Si l'appel échoue → services de récupération externes spécialisés
3. Contact "Insider" chez Facebook : réactivation manuelle d'ads (~50-75 $/créative)
4. Sinon : **changer de setup** (le plus rapide) et transférer les pixels

---

## Faire passer une créative refusée (glitch A/B test)

Marche ~75-80 % du temps :

```
1. Lance une créative CLEAN → elle passe la validation
2. Laisse-la tourner 24-48 h
3. Crée un A/B TEST dans cette créative
4. Mets ta version "pushy" en variante B
5. Cut la variante A
6. La variante B tourne
```

**Pourquoi :** le robot Facebook ne revisionne pas la variante B si la variante A
tourne déjà depuis un moment — il considère l'ensemble comme une seule créative.

⚠️ Ça peut sauter. Ce n'est pas garanti.

---

## Le cloaking (protection processeur de paiement)

Redirection instantanée selon la source du trafic.

```
Visite depuis une URL aléatoire  →  redirection vers un site "clean"
Visite depuis l'URL de la pub    →  ton vrai site
```

**Pourquoi :** si Stripe veut vérifier ce que tu fais, il voit un site
ultra propre.

**Le vrai problème que ça résout :** tu déclares "e-commerce" à ta LLC, mais tu
vends aussi de l'infoproduit → Stripe détecte l'incohérence → réaction en chaîne.

**Aussi pour un Stripe solide :**
- Cloaking
- Alertes chargeback (Chargeback 360)
- Cohérence entre l'activité déclarée et l'activité réelle
