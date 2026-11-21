# Process Valère : toutes les bases du business

Une base de connaissance pour **monter, lancer et faire grandir un business en ligne**, de la
première idée jusqu'à l'équipe qui tourne sans vous. Elle ne parle pas que de publicité ou de
copywriting : elle couvre chaque compartiment d'une entreprise, avec la méthode, les modèles
prêts à copier et les arbitrages déjà tranchés.

Elle réunit **deux sources**, rangées pour être lues par un humain comme par une IA :

| Source | Dossiers | Ce qu'elle apporte |
|---|---|---|
| **Business OS (The Valère)** | `01` à `10` | La méthode complète, organisée par étape du funnel : principes, acquisition, copy, produit, funnel, process, scaling, closing |
| **TUGAN maxi (Tugan)** | `11-tugan/` | 32 fiches de synthèse par module : copywriting, e-mailing, lancement en 28 jours, fiscalité, IA, vente |

> Notes de travail personnelles. Le contenu original appartient à ses auteurs (The Valère et
> Tugan) : ce dépôt n'en est qu'une réorganisation opérationnelle, en synthèses reformulées, à
> usage personnel.

---

## Par où commencer

| Je veux… | Fichier |
|---|---|
| **Créer un funnel de zéro** | [`06-process/PROCESS-MAITRE.md`](06-process/PROCESS-MAITRE.md) |
| Trouver n'importe quel sujet | [`00-INDEX.md`](00-INDEX.md), classé par « je veux… » |
| Comprendre les règles du système | [`CLAUDE.md`](CLAUDE.md) |
| Lire les fiches de Tugan | [`11-tugan/README.md`](11-tugan/README.md) |

---

## Ce que le dépôt couvre : les compartiments d'un business

| Compartiment | Où le trouver |
|---|---|
| **Stratégie** : marché, niche, positionnement, leviers de LTV et de CAC | `01-principes/`, `05-funnel/strategie-portefeuille.md` |
| **Offre et produit** : mécanisme, prix, formats DFY / DWY / DIY, low vers high ticket | `04-produit/`, `03-marketing-copy/avatar-et-offre.md` |
| **Copywriting** : structure CEO, hooks, VSL, leads, closing écrit, les 10 questions | `03-marketing-copy/`, `07-templates/`, `11-tugan/` |
| **E-mailing** : séquences, objets, atelier de A à Z | `03-marketing-copy/emailing.md`, `07-templates/objets-email.md`, `11-tugan/` |
| **Acquisition** : Facebook Ads, YouTube, organique, créatives, affiliation, anti-ban | `02-acquisition/` |
| **Funnel et conversion** : anatomie, landing pages, upsells, teardowns, optimisation | `05-funnel/` |
| **Vente par appel** : script en 16 parties, objections, setting, call funnel | `10-closing/` |
| **Lancement** : process complet, lancement organique, lancement en 28 jours | `06-process/`, `11-tugan/` |
| **Fidélisation et LTV** : prise en main, CSM, rétention, upsells | `08-scaling/delivrabilite-csm.md`, `05-funnel/upsells.md`, `11-tugan/` |
| **Organisation et équipe** : recrutement, structure, rémunération, productivité | `08-scaling/` |
| **Fiscalité et juridique** : statut, fiscalité, contrats | `11-tugan/` (fiche 18) |
| **Tech, automatisation, IA** : prompts, no-code, outils | `07-templates/prompts-ia.md`, `11-tugan/` (fiche 22) |
| **Mindset et façon de penser** : comment The Valère raisonne et arbitre | `01-principes/modele-mental.md`, `09-faq/` |

---

## Structure du dépôt

```
├── CLAUDE.md                     Règles de lecture + les 4 lois non négociables
├── 00-INDEX.md                   Carte de navigation, classée par intention
│
├── 01-principes/                 Principes premiers · équation du business (LTV, cohortes)
│                                 stratégie unique · modèle mental
├── 02-acquisition/               Facebook Ads · Facebook vs YouTube · anti-ban · organique
│                                 YouTube · créatives statiques · affiliation · fournisseurs
├── 03-marketing-copy/            Structure CEO · headline / hook / big idea · biais · VSL
│                                 leads · body · closing · créatives · e-mailing · avatar et offre
├── 04-produit/                   Philosophie MVP · formats d'offre · low vers high ticket
├── 05-funnel/                    Anatomie · landing pages · checklist · teardowns
│                                 upsells · funnels gagnants · portefeuille
├── 06-process/                   PROCESS-MAITRE (le pipeline complet) · créer un process
│                                 lancement organique
├── 07-templates/                 Scripts ads · 10 leads · objets e-mail · prompts IA
│                                 doc de travail · hacks marketing
├── 08-scaling/                   100k vers 300k · équipe · recrutement · CSM · productivité
├── 09-faq/                       Arbitrages tranchés
├── 10-closing/                   Vente par appel · script · objections · call funnel
├── 11-tugan/                     32 fiches par module de la formation TUGAN maxi
│
└── transcript business os/       Sources brutes de Business OS (archive, voir ci-dessous)
```

Les dossiers `01` à `10` suivent l'ordre naturel d'un business : on pose les principes, on
trouve ses clients, on écrit le message, on construit l'offre et le funnel, on installe le
process, on fait grandir l'équipe, on vend au téléphone.

---

## Le pipeline en 6 phases

```
PHASE 0  STRATÉGIE      Niche + canal + awareness + format
PHASE 1  FONDATION      Avatar + Offre (8 composantes) + Mécanisme + MVP
PHASE 2  MESSAGE        Headline → Lead → Body (structure CEO) → Closing
PHASE 3  TECHNIQUE      Setup FB + funnel + pixels
PHASE 4  ACQUISITION    20-50 angles → 10×10×10 créatives → Broad + CBO
PHASE 5  BACKEND        Séquence 7 jours + automatisations (= le profit net)
PHASE 6  OPTIMISATION   LTV ↑ , CPA ↓ pour toujours
```

---

## Les 4 lois

1. **Business = mettre le bon message devant la bonne personne au bon moment.**
2. **Objectif unique : LTV ↑ , CPA ↓.** Le reste n'a rien à faire dans la journée.
3. **La structure CEO est dans tout** : VSL, ads, e-mails, closing, séquences.
4. **On vend un résultat + de l'urgence.** Jamais un produit.

---

## Fichiers les plus structurants

| Fichier | Pourquoi |
|---|---|
| [`01-principes/strategie-unique.md`](01-principes/strategie-unique.md) | Les 11 leviers de LTV et 12 leviers de CAC. L'assemblage est ce qui fait l'écart entre 100k et 1M. |
| [`03-marketing-copy/structure-ceo.md`](03-marketing-copy/structure-ceo.md) | La phrase de Blair Warren décomposée en 11 blocs opérationnels. Tout en découle. |
| [`03-marketing-copy/headline-hook-bigidea.md`](03-marketing-copy/headline-hook-bigidea.md) | Headline + hook + big idea = 75 % de la conversion. Le reste est du packaging. |
| [`03-marketing-copy/closing-copy.md`](03-marketing-copy/closing-copy.md) | Les 27 outils de closing classés par famille, et pourquoi on n'en utilise que 3. |
| [`05-funnel/landing-pages.md`](05-funnel/landing-pages.md) | Les 6 structures de LP prêtes à copier (3 low ticket, 3 high ticket). |
| [`05-funnel/teardowns.md`](05-funnel/teardowns.md) | Les 13 corrections qui reviennent sur toutes les pages auditées. |
| [`03-marketing-copy/creatives-ads.md`](03-marketing-copy/creatives-ads.md) | La méthode 10×10×10 : 10 scripts écrits, 1 000 créatives. |
| [`07-templates/doc-travail-avatar-offre.md`](07-templates/doc-travail-avatar-offre.md) | Le template à dupliquer avant chaque lancement. |
| [`08-scaling/100k-vers-300k.md`](08-scaling/100k-vers-300k.md) | Les 20 erreurs qui bloquent au palier 100k, et les 7 leviers qui débloquent. |
| [`09-faq/arbitrages.md`](09-faq/arbitrages.md) | Les questions récurrentes, déjà tranchées. |
| [`10-closing/script-appel.md`](10-closing/script-appel.md) | Le script d'appel en 16 parties, annoté. L'échelle 1-10 est le pivot de toute vente high ticket. |
| [`11-tugan/README.md`](11-tugan/README.md) | Le sommaire des 32 fiches de Tugan : copywriting, e-mailing, lancement en 28 jours, fiscalité, IA. |

---

## Et le dossier `transcript business os/` ?

Ce sont les **sources brutes** de Business OS (195 fichiers, environ 888 000 mots de
transcription automatique), gardées pour archive. Ce n'est **pas** la base de connaissance : la
transcription contient des erreurs de reconnaissance (« la vaisselle » = la VSL, « obsel » =
upsell). Pour répondre à une question, on lit les dossiers `01` à `11`, pas ce dossier.
