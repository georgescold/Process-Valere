# Facebook Ads vs YouTube Ads

> ⚠️ **Note de lecture — deux sources, une nuance.**
> Une source dit *"YouTube Ads, c'est de la merde"*. Une autre dit *"YouTube est
> beaucoup plus optimisé pour les débutants"*. **Les deux sont vraies** et disent
> la même chose sous deux angles :
>
> ```
> YouTube  →  facile à DÉMARRER, mauvais pour SCALER
> Facebook →  dur à démarrer, excellent pour SCALER
> ```

---

## La différence fondamentale : le modèle de facturation

| | **Facebook** | **YouTube** |
|---|---|---|
| Tu payes à… | **l'impression** | **la vue** (= 30 s de visionnage) |
| Métrique clé | **CPM** (coût pour 1000 impressions) | Coût par vue |
| Conséquence | Une impression = 0 s de vue possible. Tu payes quand même. | **Si ton hook est mauvais, tu ne payes pas** |

**Ce que ça implique concrètement :**

- Sur **Facebook**, le hook est critique — tu payes même si personne ne regarde
- Sur **YouTube**, l'objectif est que dès que quelqu'un dépasse 30 secondes,
  il clique. Le hook est moins déterminant financièrement

C'est pour ça qu'un débutant obtient plus facilement des résultats sur YouTube :
**ses mauvais hooks ne lui coûtent rien.**

---

## Tableau comparatif complet

| Critère | Facebook | YouTube |
|---|---|---|
| Facturation | Impression | Vue (30 s) |
| Importance du hook | ⭐ Critique | Moins critique |
| Facilité du ciblage | Moyenne | ⭐ Plus facile |
| Compliance | Très stricte | ⭐ Souple |
| Risque de ban | Élevé | Faible |
| Case CGV obligatoire | ✅ Oui | Non |
| Liberté de redirection | Limitée | ⭐ Totale |
| **Scaling** | ⭐⭐ Excellent | Mauvais |
| **Qualité du trafic** | ⭐⭐ 2 à 3× supérieure | Faible |
| Précision du ciblage | ⭐⭐ Très précis | Imprécis |
| Qualité de l'IA | ⭐ Un cran au-dessus | Correcte |
| Format | 1080 × 1080 | 1920 × 1080 |

---

## Pourquoi la compliance diffère autant

> YouTube n'a rien à faire d'où tu envoies ton trafic, du moment qu'il est bien
> traité **sur sa plateforme**. Facebook, lui, doit toujours brosser son trafic
> dans le sens du poil.

Conséquences pratiques :
- Sur Facebook : case "j'accepte les conditions générales" obligatoire, mention
  d'indépendance vis-à-vis de Facebook obligatoire
- Sur YouTube : tu peux shooter directement sur ta VSL

---

## ⭐ Le point le plus important : la qualité du lead

> **Un lead Facebook rapporte en moyenne 2 à 3 fois plus qu'un lead YouTube** —
> alors que c'est le même profil, les mêmes centres d'intérêt.

**L'hypothèse explicative :**
```
Facebook → quand l'utilisateur clique sur une LP, son email est PRÉ-REMPLI
           avec celui de son compte Facebook = son email PRINCIPAL

YouTube  → l'utilisateur tape un email à la main
           = beaucoup d'adresses poubelle (azerty@gmail.com)
```

C'est une hypothèse, pas une certitude — mais l'écart de LTV est mesuré.

---

## Le scaling

```
FACEBOOK : tu montes le budget, le ROAS descend progressivement
YOUTUBE  : tu passes de 1 000 €/jour à 10 000 €/jour → le ROAS s'effondre
```

C'est le point qui disqualifie YouTube pour un business qui veut vraiment scaler.

---

## Verdict opérationnel

| Ta situation | Va sur |
|---|---|
| Tu débutes, tu as peur du ban, ton copy n'est pas encore bon | **YouTube** |
| Tu veux scaler, tu veux du lead qualifié, tu fais de l'emailing | **Facebook** |
| Tu as une intention de recherche forte (SaaS B2B) | **Google Ads** |

> Si tu débutes, YouTube n'est vraiment pas mal. Mais Facebook est de loin
> beaucoup plus optimisé pour scaler.

---

## ⭐ La stratégie de pixel progressive

Il existe **deux stratégies de pixel**, toutes deux valables :

### Stratégie A — "Facebook, démerde-toi"

```
Ciblage BROAD  +  pixel sur l'ACHAT, directement
```

Simple, ça se tient, c'est ce qui est utilisé au quotidien.
→ Détail : `02-acquisition/facebook-ads.md`

### Stratégie B — L'optimisation en 3 temps ⭐

On déplace le pixel étape par étape **sans jamais toucher au budget**.

```
Rappel du funnel :
LP → VSL → BON DE COMMANDE → UPSELL 1 → UPSELLS → THANK YOU PAGE

┌─ TEMPS 1 ──────────────────────────────────────┐
│  Pixel sur la VSL           → optimiser le CPL │
│  Objectif : des leads pas chers                │
└────────────────────────────────────────────────┘
                    ↓ une fois le CPL bon
┌─ TEMPS 2 ──────────────────────────────────────┐
│  Pixel sur le BON DE COMMANDE (ajout panier)   │
│  Objectif : des gens qui regardent la VSL ET   │
│  qui sont intéressés par le produit            │
└────────────────────────────────────────────────┘
                    ↓ une fois l'ajout panier bon
┌─ TEMPS 3 ──────────────────────────────────────┐
│  Pixel sur l'ACHAT          → optimiser le CPA │
└────────────────────────────────────────────────┘
```

**Le principe :** tu construis la qualité du pixel par paliers. À chaque étape
tu as d'abord des leads pas chers, puis des gens qui regardent ta VSL pour pas
cher, puis des acheteurs pour pas cher.

⚠️ **On n'augmente pas le budget pendant ce processus.**

---

## 🔥 Native Ads pour le retargeting (astuce à faible coût)

Les native ads, c'est la pub qui s'affiche sur les sites de streaming et les
sites de contenu. **Plateformes : Taboola, Outbrain.**

**Le principe :** ça coûte très peu. Donc plutôt que d'en faire ton acquisition
principale (mauvaise idée — voir `09-faq/arbitrages.md`), utilise-la pour
**retarget à moindre coût**.

```
1. Tu fais ta pub sur Facebook
2. Tu installes AUSSI le pixel Google sur tes pages
3. Tu retargetes en NATIVE ADS les gens qui ont cliqué sur Facebook
   → coût de retargeting très bas
```

Fonctionne aussi via Google Ads.

⚠️ **Ne pas confondre :** la native ads en *acquisition froide* est déconseillée
(pas de ciblage précis, terrain des scams). En *retargeting*, c'est un levier de
coût.

---

## Le principe qui vaut pour tous les canaux

> **Le même lead ne convertit pas de la même façon selon le canal.**

Un prospect qui voit ta pub sur YouTube n'achètera peut-être pas.
**Ce même prospect, dans ta base mail, achètera.**

C'est contre-intuitif mais c'est mesuré. C'est aussi pour ça que le trafic que
tu **possèdes** (email, Telegram) a plus de valeur que le trafic acheté.

→ `01-principes/equation-business.md` · `03-marketing-copy/emailing.md`
