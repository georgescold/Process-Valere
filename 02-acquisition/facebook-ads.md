# Facebook / Meta Ads

> **Facebook Ads est de loin la meilleure régie publicitaire.** Raison :
> 15 ans de data sur les gens. Aucune autre régie n'a ça. Et le ciblage Broad
> est insane.

*"Facebook Ads" = Meta Ads = Facebook + Instagram. Abus de langage assumé.*

## Vue d'ensemble des 3 canaux d'acquisition

| Canal | Coût | Scalabilité | Verdict |
|---|---|---|---|
| **Organique** | Temps | Moyenne | Bon pour démarrer, bon pour l'autorité |
| **ADS** | Argent | ⭐ Ultra scalable | Le levier réel |
| **Referral** | Ni temps ni argent | ❌ Nulle (non contrôlable) | Bonus. Bon produit = referral automatique |

> Le Cold DM est de la publicité — payée en temps, pas en euros. Ce n'est pas de
> l'organique (aucun algorithme ne te met en avant).

**Quand passer de l'organique aux ADS :** as soon as possible, à condition d'avoir
du temps disponible. Règle 60/30/10 : les ADS sont dans les 10 % "×10".
Repère : à partir de ~35k€/mois en organique, on commence à s'y mettre sérieusement.

---

## L'architecture d'une campagne

```
┌─────────────────────────────────────────┐
│  CAMPAGNE          → GESTION DU BUDGET  │  BACK-END (toi seul le vois)
│  ├─ ADSET          → CIBLAGE            │  BACK-END
│  │   ├─ CRÉATIVE 1 → PUB                │  FRONT-END (tout le monde le voit)
│  │   ├─ CRÉATIVE 2                      │
│  │   └─ CRÉATIVE n                      │
└─────────────────────────────────────────┘
```

| Niveau | Contient |
|---|---|
| **Campagne** | Objectif, budget (CBO), A/B test |
| **Adset** | Ciblage, pixel, événement de conversion, placements, dynamic creative |
| **Créative** | Vidéo/image, texte primaire, headline, description |

---

## Configuration recommandée

| Paramètre | Réglage |
|---|---|
| Type de campagne | **Normale** (pas Advantage+ campaign) |
| Budget | **Advantage+ budget (CBO)** — géré au niveau campagne |
| A/B test | Ne pas toucher |
| Objectif | Ventes |
| Adset | **Dynamic creative activé** |
| Ciblage | **Broad** |
| Placements | Advantage+ placements → dépend du ciblage (souvent non) |

---

## Le ciblage BROAD

> **Broad = ciblage nul. Seulement le pays.**

```
Ciblage = 0
Pays    = France (ou US, ou "worldwide + langue anglaise")
Centres d'intérêt = AUCUN
```

### Pourquoi ça marche

```
Impressions → Réactions → Clics → Déclenchements de pixel
                                          ↓
                    Facebook : "ce profil a converti,
                     envoie-moi plus de gens comme ça"
```

Le ciblage se fait **sur les gens**, pas sur leurs centres d'intérêt.
À long terme, c'est structurellement supérieur.

### Variante avancée : "Worldwide + langue"

Cibler la planète entière avec **langue = anglais**. Tu touches US, Australie,
Amérique latine, France, Russie — tous les anglophones. Ciblage comme un autre,
marche plutôt bien.

⚠️ Exclure Taïwan et Hong Kong (obligatoire pour de nombreux comptes).

### Broad vs centres d'intérêt sur petit budget

Sur petit budget, le Broad met plus de temps à s'optimiser (c'est très large,
donc au début c'est n'importe quoi). Mais à moyen terme (une semaine à 10 jours),
il domine.

**Si budget serré et tu veux quand même tester des intérêts :**
```
Budget 50 €/jour
├─ Adset BROAD ………………………… 20 €/jour
├─ Adset Intérêt A ………………… 10 €/jour
├─ Adset Intérêt B ………………… 10 €/jour
└─ Adset Intérêt C ………………… 10 €/jour
```
**Règle : UN centre d'intérêt PAR adset.** Jamais d'intérêts stackés — sinon tu ne
sauras jamais lequel performe.

⚠️ Beaucoup de gens spendent 10k/jour sans savoir quel centre d'intérêt est rentable.
C'est absurde.

---

## Meta Andromeda — la mise à jour qui change le ciblage

Avec Andromeda, Facebook crée **automatiquement des sous-audiences** basées sur
les angles de tes créatives.

**Conséquence stratégique :**

```
1. Liste 20 à 50 BÉNÉFICES de ton produit  →  ce sont tes ANGLES
2. Crée une publicité par angle
3. Laisse l'algorithme déterminer quel angle attire quelle audience
```

> L'objectif devient de **maximiser les tests d'angles**, pas d'optimiser
> quelques créas — le ciblage se fait désormais tout seul via Advantage+ Broad.

---

## LE PIXEL

### Ce que c'est

Un petit bout de code HTML à coller dans le `<head>` de tes pages.
Il dit à Facebook : *"cette page a été vue"* → Facebook envoie plus de gens
susceptibles de faire la même chose.

### Structure du code

Le pixel se compose de deux parties :
```
[NUMÉRO DE PIXEL]  +  [ÉVÉNEMENT]
```

Tu dupliques le code de base et tu changes juste l'événement.

### Placement sur le funnel

```
Landing Page     →  PageView
VSL              →  Lead              (la personne a laissé son email)
Bon de commande  →  InitiateCheckout  (elle a engagé un paiement)
Thank you page   →  Purchase          (elle a acheté)
```

Pour du high ticket avec appels : **CompleteRegistration** après la réservation.

### Quel événement de conversion choisir ?

**La règle : 20 à 50 déclenchements de pixel par semaine minimum** pour que
l'algorithme s'optimise.

| Situation | Événement à optimiser |
|---|---|
| Budget confortable (100-150 €+/jour), déjà expérimenté | **Purchase** |
| Petit budget, peu d'achats/semaine | **InitiateCheckout** |
| Produit très cher, très peu d'ajouts au panier | **Lead** (sur la VSL) |

### Installation pratique

1. Créer une campagne → Adset → "Créer un nouveau pixel"
2. Nommer le pixel, entrer le domaine
3. "Écrire le code manuellement" → copier le code
4. Coller dans le `<head>` de chaque page
5. Adapter l'événement page par page
6. Vérifier avec l'extension **Meta Pixel Helper**

---

## 🔥 Astuce pixel high-ticket : qualifier les leads

**Le problème :** pour Facebook, un lead qualifié et un lead non qualifié ont la
même valeur. Tu lui dis "maximise le nombre de leads", il t'envoie des curieux.

**La solution :**

```
VSL → Typeform de qualification
              │
    ┌─────────┴──────────┐
    ↓                    ↓
Réponse NON qualifiée   Réponse QUALIFIÉE
(gagne < 5k/mois)       (gagne > 5k/mois)
    ↓                    ↓
Thank you page          Thank you page
SANS pixel              AVEC pixel
    ↓                    ↓
Facebook ne voit        Facebook : "plus de
rien                    gens comme celui-là"
```

Typeform permet la redirection conditionnelle vers une URL selon les réponses.
**Deux thank you pages : une avec pixel, une sans.**

Variante : mettre le pixel sur le **bouton** (`fbq('track', ...)` au clic) ou sur
la première question du Typeform.

---

## LE BUDGET

| Situation | Budget testing |
|---|---|
| Débutant | 30 à 50 €/jour |
| Recommandé (optimal) | 100 à 150 €/jour |
| Testing pro (The Valere) | 150 €/jour FR, 200 $/jour US |
| Le pro extrême | 5 000 €/jour de testing |

**Repères :**
- Le minimum absolu pour que ça ait du sens : ~25-30 €/jour
- Objectif : **20 à 50 déclenchements de pixel par semaine**
- Durée pour juger une créative : **48 h minimum**

**Astuce solidité du compte :** faire tourner en permanence une pub image ultra
clean à **2 €/jour**. Facebook est content, ça crée de l'historique, ça réduit
le risque de saut du compte.

---

## Le CPM

> Un CPM élevé n'est pas mauvais en soi.

Si une impression coûte 2× plus cher mais rapporte 2× plus, c'est neutre.
En Q4 + élections US : CPM de 150-200 $ vs 80 $ hors période. C'est normal,
les gens achètent aussi plus.

---

## 🔥 La campagne CONTRÔLE — réduire ses CPM de 15-20 %

Stratégie testée et mesurée sur un mois.

```
1. Crée une campagne dédiée
2. Budget : 3 à 5 % de ton ad spend (min. 100 €/jour de spend total)
3. Cible : ton ADS BESTSELLER
4. Objectif : ENGAGEMENT (pas conversion)
5. Ad copy : "like", "commente", "donne ton avis" — aucun lien externe
```

**Pourquoi ça marche :** la créative monte en rank chez Facebook (elle génère de
l'interaction et **garde le user dans Facebook**). Facebook la récompense sur ta
campagne de scaling.

**Résultat mesuré : -15 à -20 % de CPM.**

> Corollaire général : **plus tu gardes le consommateur dans Facebook, plus
> Facebook est gentil avec tes CPM.**

---

## Scaler

Quand tu as un bon Broad :
1. Dépenser sur l'adset, une créative par ad
2. Identifier la meilleure créative
3. Dupliquer les hooks gagnants avec d'autres bodies
4. Répéter à l'infini

**Ne pas cut les créatives** qui dépensent peu (funnel d'ads).
Cut seulement celles vraiment rincées.

---

## Autres régies

| Régie | Verdict |
|---|---|
| **Facebook / Meta** | ⭐ La référence |
| **TikTok Ads** | Très bon en ce moment, surtout e-commerce. "Tout passe" |
| **Google Ads** | Excellent si intention de recherche (ex : SaaS pour avocats) |
| **YouTube Ads** | ⚠️ Nuancé : **bon pour débuter** (tu payes à la vue, donc un mauvais hook ne coûte rien ; compliance souple, peu de bans). **Mauvais pour scaler** (ciblage imprécis, lead 2-3× moins rentable, ROAS qui s'effondre à budget élevé). → `02-acquisition/facebook-vs-youtube.md` |
| **Pinterest** | Existe |
| **PropellerAds** | Notifications push. Ultra direct response. Testé avec de bons résultats |
| **Telegram Ads** | Peu de méta claire, personne n'est vraiment bon. Bon pour les bots Telegram |

**Règle de choix :** regarde où sont tes concurrents. S'ils sont sur TikTok, va sur
TikTok. En général : ce qui marche sur TikTok marche sur Facebook, l'inverse n'est
pas vrai.

**Note Telegram Ads :** si tu envoies vers une VSL, n'utilise pas Telegram — garde
le prospect dans Telegram (bot → vidéo dedans). Le ciblage se fait canal par canal.
Astuce : cibler les canaux de tes concurrents.

---

## Périodes & saisonnalité

- **Q4 + élections US** : CPM très élevés, mais les gens achètent plus
- **Black Friday / Cyber Monday** : urgence gratuite, période de creux transformée
  en pic. Envoie des mails, fais une réduction — les gens l'attendent.
- **Horaires de lancement** : lancer à minuit est un micro-détail (~0,1 %).
  Envoie quand tu veux.

---

## Ce qui saute (compliance)

| ❌ | Alternative |
|---|---|
| Avant/après visuel | Décrire le "avant" à l'oral, montrer le "après" |
| Promesse de gain sur temps ("10 000 € en 30 jours") | "Voici ce qu'a gagné Stéphane en 30 jours" + screenshot |

→ Setup technique pour ne pas se faire ban : `02-acquisition/setup-anti-ban.md`

### ⚠️ Ne jamais confondre deux corpus de règles

C'est l'erreur la plus fréquente en niche réglementée (crypto, investissement,
santé, finance) :

| | Ce que c'est | Ce que ça régit |
|---|---|---|
| **La loi du pays** | Le droit en vigueur là où tu opères | Ton **offre**, ta page, tes promesses, tes mentions obligatoires |
| **Les règles Meta** | La politique publicitaire d'une entreprise privée | Ta **créative** et ton compte |

Une créative conforme à Meta peut être illégale. Une offre légale peut se faire
bannir. Ce sont deux jeux de contraintes séparés, à traiter séparément.

> En crypto / investissement, la contrainte n°1 est **la loi**, pas Meta :
> on ne promet pas de gain financier. Le travail consiste à contourner la promesse,
> pas à la déguiser.

### 🔥 Le footer / disclaimer comme arme

Sous-utilisé, et c'est une **arme surpuissante** en niche réglementée.

Le principe : au lieu d'affirmer, tu ouvres une possibilité — et tu bordes en
disclaimer. Dans une VSL : *« je ne te dis pas ce que tu dois faire, je te dis que
c'est peut-être une possibilité »*, avec un disclaimer de 10 lignes qui l'encadre.

**Le modèle à étudier :** les présentations investisseurs de Palantir s'ouvrent sur
un pavé de *forward-looking statements* — la liste explicite des verbes
(*expect, anticipate, believe, hope, target, project, plan, goals*) dont l'emploi
ne constitue pas un engagement.

```
Le disclaimer défile 3 secondes. Personne n'a le temps de le lire.
Ils le savent. Il est là quand même — et il tient juridiquement.
```

⚠️ Ce n'est pas un conseil juridique. En niche réglementée, fais valider tes
mentions par un avocat : les répercussions sont réelles.
