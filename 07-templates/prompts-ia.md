# Prompts IA

> Règle de fond : **on n'écrit pas les VSL avec l'IA.**
> L'IA sert à l'avatar, aux ad copies, aux emails, aux posts — tout ce qui est court
> et déclinable. Le texte de vente long reste écrit à la main (ou par un copywriter).

---

## 1. Générer un avatar (le prompt fondateur)

Prompt en **4 étapes conversationnelles**. Ne pas tout demander d'un coup.

### Étape 1 — Prise d'information initiale

```
Tu es un expert en marketing direct et en psychologie du consommateur.

Je vais te décrire ce que je vends. Ton rôle est de me poser toutes les questions
nécessaires pour construire un avatar client ultra précis.

Voici ce que je vends :
[DÉCRIS TON PRODUIT / SERVICE : quoi, à qui, à quel prix, quel résultat]

Pose-moi les questions dont tu as besoin avant de commencer.
```

*L'IA doit demander : âge, intérêts, localisation, niveau d'éducation, comportement
d'achat, frustrations, caractéristiques à exclure, informations sur la niche.*

⚠️ **Plus tu détailles tes réponses, meilleur est le résultat.**
Prends 5 minutes, pas 90 secondes.

### Étape 2 — Générer 3 avatars potentiels

```
À partir de ces informations, propose-moi 3 avatars clients potentiels
sous forme de tableau.

Pour chacun : prénom, âge, situation professionnelle, situation financière,
localisation, niveau d'éducation, comportement d'achat, frustrations principales.
```

### Étape 3 — Approfondir l'avatar retenu

```
Je retiens l'avatar [X]. Développe en profondeur ses PEURS et ses FRUSTRATIONS.
```
puis
```
Maintenant, développe ses RÊVES et ses DÉSIRS.
```
puis
```
Crée une colonne supplémentaire qui détaille ses OBJECTIONS à l'achat.
```

### Étape 4 — Export

```
Génère ce tableau complet en PDF pour que je le télécharge.
```

### Utilisation du livrable

```
1. Télécharger le PDF
2. Créer un GPT personnalisé
3. Y uploader : le PDF avatar + des livres de marketing + ton offre détaillée
4. Générer ads / emails / posts / tweets à la chaîne
```

---

## 2. Générer des ad copies

**Étape 1 — Contextualiser :**
```
www.[TONSITE].com/[URL]

De quoi parle ce site ?
```

**Étape 2 — Générer :**
```
Tu es le meilleur copywriter du monde, spécialisé en direct response marketing.

À partir de ce site, génère-moi :
- 5 textes primaires
- 5 headlines
- 5 descriptions

pour une campagne Facebook Ads.

Contraintes :
- Chaque variation utilise un ANGLE MARKETING différent
- Bénéfice clair dans les 5 premiers mots
- Pas de promesse de gain chiffrée sur une durée (compliance Facebook)
- Ton direct, pas corporate
```

---

## 3. Générer 20-50 angles marketing (spécial Andromeda)

```
Voici mon produit : [DESCRIPTION]
Voici mon avatar : [COLLER LE PDF AVATAR]

Liste-moi 40 BÉNÉFICES distincts de ce produit.

Contraintes :
- Un bénéfice = un angle marketing différent
- Varier les niveaux : bénéfice fonctionnel, émotionnel, social, identitaire
- Pas de redites
- Formulé du point de vue du client, pas du produit
```

→ Chaque bénéfice devient une créative. Cf. `02-acquisition/facebook-ads.md` § Andromeda.

---

## 4. GPT personnalisé "Copywriter maison"

**Fichiers à uploader dans le GPT :**
- Le PDF de l'avatar
- La fiche offre complète
- *Breakthrough Advertising*
- *Le Séminaire de Bencivenga*
- *Influence et Manipulation*
- Tes propres textes qui ont converti

**Instructions du GPT :**
```
Tu es mon copywriter en chef.

Tu écris toujours selon la structure CEO :
rêve → échec → peur → doute → ennemi commun → preuve/big idea → mécanisme →
bénéfice + preuve + rêve → urgence → garantie → CTA

Règles absolues :
- Jamais le mot "apprendre" → utiliser "révéler" ou "dévoiler"
- Jamais le mot "formation" ni "produit" → parler de transformation
- Jamais de caractéristiques produit → uniquement des bénéfices
- Jamais de négation dans les promesses (le cerveau ne la traite pas)
- Toujours : image mentale + mot d'émotion
- Toujours : une phrase = une idée
- Toujours un CTA
- Ton direct, phrases courtes, pas de langue de bois

Cible : [COLLER L'AVATAR EN RÉSUMÉ]
```

---

## 5. Analyse de data (funnel / ads)

```
Voici les données de mes campagnes Facebook Ads sur les 30 derniers jours :
[COLLER LE CSV / EXPORT]

Analyse ces données et identifie :
1. Les 3 créatives les plus rentables et POURQUOI (hypothèses psychologiques)
2. Les créatives à conserver malgré un faible spend (rôle dans le funnel d'ads)
3. La métrique la plus faible du funnel
4. 5 hypothèses d'amélioration testables, classées par impact/effort
```

⚠️ Utiliser un modèle de raisonnement (o1 / o3 / équivalent), pas un modèle rapide.

---

## 6. Vérifier la compliance d'un script

```
Voici les CGV et la politique publicitaire de [PLATEFORME] : [UPLOADER]

Voici mon script d'ad : [COLLER]

Ce script est-il compliant ? Liste précisément :
- Les passages à risque
- La règle exacte qu'ils enfreignent
- Une reformulation qui conserve l'impact
```

---

## 7. Traduire / localiser un infoproduit

```
Traduis ce contenu en [LANGUE].

Contraintes :
- Ce n'est pas une traduction littérale, c'est une ADAPTATION marketing
- Conserver l'impact émotionnel, pas les mots
- Adapter les références culturelles
- Adapter les montants dans la devise locale
```

Pour la vidéo : **HeyGen** fait la traduction + le doublage.

---

## 8. Générer des objets d'email

```
Génère 24 objets d'email pour ce mail :
[COLLER LE MAIL]

Contraintes :
- 2 objets pour chacun des 12 types suivants : Urgence, Clickbait, Personnalisation
  (%FIRSTNAME%), Curiosité, Bénéfice, Émotion, Nouveau, Éducation, Preuve sociale,
  Secret, Blague, Stat
- Maximum 3 spam words au total sur l'ensemble
- Moins de 60 caractères de préférence
```

---

## Ce que l'IA ne doit PAS faire

| ❌ | Pourquoi |
|---|---|
| Écrire une VSL de A à Z | Le résultat est plat, générique, sans émotion réelle |
| Écrire une page de vente longue | Idem |
| Écrire à ta place en personal branding | Ça se sent, ça casse la relation |
| Choisir ta Big Idea | Ça vient de ta compréhension du marché |

L'IA est un **assistant de production**, pas un stratège.
