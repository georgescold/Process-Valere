# Anatomie d'un funnel

## Le funnel standard (low / mid ticket)

```
┌──────┐   ┌────────────┐   ┌─────┐   ┌──────────────┐   ┌────────┐   ┌──────────┐
│ ADS  │ → │  LANDING   │ → │ VSL │ → │ BON DE       │ → │ UPSELL │ → │ THANK    │
│      │   │  PAGE      │   │     │   │ COMMANDE     │   │ (OTO)  │   │ YOU PAGE │
└──────┘   └────────────┘   └─────┘   │  + BUMP      │   └────────┘   └──────────┘
                │                     └──────────────┘
                │                            │                            │
           PageView                   InitiateCheckout                 Purchase
                │                            │
             Lead ────────────────→ EMAIL CAPTURÉ ←──────────────────────┘
                                             │
                                             ↓
                                    SÉQUENCE EMAILING
                                    (là où est le profit)
```

---

## Le funnel high ticket

```
┌──────┐   ┌─────┐   ┌──────────────┐   ┌─────────────┐   ┌────────┐
│ ADS  │ → │ VSL │ → │  TYPEFORM    │ → │  CALENDRIER │ → │ APPEL  │
│      │   │     │   │ QUALIFICATION│   │  (iClosed)  │   │ CLOSING│
└──────┘   └─────┘   └──────────────┘   └─────────────┘   └────────┘
                            │
                  ┌─────────┴─────────┐
                  ↓                   ↓
          NON qualifié          QUALIFIÉ
          TY page SANS pixel    TY page AVEC pixel
```

⚠️ **Pas de landing page sur du high ticket avec petit budget.**
Chaque étape = de la friction. Envoie directement sur la VSL.

**En revanche : mets un pop-up de sortie sur la VSL.** Dès que la souris quitte
la page → pop-up → tu récupères le numéro de téléphone.

Si tu mets une landing page en high ticket : **demander le numéro de téléphone
est obligatoire.**

---

## Le funnel e-commerce

```
ADS → FICHE PRODUIT → CHECKOUT + BUMP → UPSELL → THANK YOU PAGE
```

Sur une fiche produit, appliquer les mêmes principes marketing :
bénéfice en haut, urgence (stock restant), preuve, avant/après, promotion.

---

## Anatomie d'une bonne landing page

```
[HEADLINE : bénéfice clair]
[SUB-HEADLINE]
[CHAMP EMAIL]
[BOUTON CTA]
```

Points d'optimisation :
- A/B test headline
- A/B test pop-up de sortie + sa headline
- A/B test CTA
- **Simplifier le design** (souvent, simplifier = mieux)
- Copywriting général
- **Scroll tracking** : si la personne n'a pas besoin de scroller (mobile),
  tu gagnes en conversion
  - Astuce inverse : mettre un trigger visuel en bas de page qui donne envie de
    scroller (une Lamborghini, de l'argent) → augmente le taux de conversion
- Retargeting pixel : retarget les non-opt-in directement sur la VSL

**Taux de conversion cible d'une LP : ~50 %.** En dessous, il y a un problème.

---

## Anatomie d'une bonne page de vente (VSL)

```
[H1 : headline]
[H2 : sub-headline]
[VIDÉO — hébergée sur Wistia ou Vimeo, PAS YouTube]
[BOUTON CTA]
[+ preuves / bonus / garantie / FAQ optionnels]
[CGV + mentions légales]
```

Règles :
- ❌ Pas de bouton ni de prix **au-dessus** de la vidéo
- ❌ Pas de watermark de l'outil (Systeme.io, etc.)
- ✅ Fond blanc, texte noir
- ✅ Sous-titres sur la vidéo
- ✅ Un bouton "remonter en haut" en bas de page

---

## Le bon de commande + BUMP

**Le bump = une offre additionnelle proposée sur le bon de commande.**

Objectif du bump : *"décision facile, ce bump est un no-brainer."*

Optimisations :
- Rappeler clairement les **bénéfices** de l'offre
- Meilleures **preuves sociales**
- **Urgence / rareté**
- Rappeler que le **formulaire est sécurisé**
- Mettre en avant les **bonus**
- Mettre en avant la **promotion**
- Mettre en avant la **politique de remboursement**
- Images de qualité, brandées
- **Exit pop-up avec promotion** (excellent sur desktop)
- **Devise locale** (critique si tu cibles l'Amérique latine)
- **Résumé de la commande** avec tous les bonus
- **Q&A** en bas, avant les CGV
- **Témoignages**
- **Pop-up d'activation** quand d'autres personnes achètent (preuve sociale live)
- ⭐ **Bump pré-coché** — augmente les revenus instantanément

⚠️ **Métrique du bump : EPC, pas le taux de conversion.**
Si on optimisait la conversion, on mettrait le bump à 1 € et invisible.
Ce qu'on veut, c'est l'earning per click.

**Idée :** pourquoi ne pas ajouter un 2e, 3e, 4e bump ? Est-ce que ça fait
monter l'EPC global ?

**Retargeting :** retarget les personnes qui se sont arrêtées au checkout.
Facebook track tout.

---

## Upsell (OTO — One Time Offer)

> **Si tu as un funnel sans upsell, tu perds de l'argent maintenant.**

Le tip le plus rapide du business : ajoute un produit supplémentaire juste après
l'achat, à ~10 % du prix principal (50 €, 100 €…). Revenu incrémental immédiat.

Vrai pour : e-commerce, SaaS, infoproduit, appels de vente.

---

## Thank you page

**Vends aussi sur la thank you page.** Il y a du trafic, donc il y a de la vente.

> "Si tu ne le fais pas, tu n'as juste pas compris le business."

---

## Les outils

| Besoin | Outil | Note |
|---|---|---|
| Funnel builder | **Systeme.io** | Moins cher, largement suffisant, recommandé |
| Funnel builder | ClickFunnels | Plus cher (×4), plus "pro", pour du high ticket |
| Funnel builder | GoHighLevel | Correct, feedbacks mitigés |
| Hébergement vidéo | Wistia, Vimeo | ❌ Jamais YouTube pour une VSL |
| Calendrier + closing | **iClosed** | Killer feature : tu récupères les infos dès l'opt-in, même sans réservation. Plusieurs closers sur un calendrier. Attribution par avatar |
| Calendrier | Calendly | Nécessite du bricolage avec Zapier pour du multi-closer |
| Qualification | Typeform | Redirection conditionnelle selon les réponses |
| Automatisation | Zapier, Make | |
| Emailing | Systeme.io, ActiveCampaign | Amazon SES pour les gros volumes |

---

## Exemple de funnel réel à ~300k€/mois (perte de poids)

Structure observée :
```
Facebook Ads
   → Landing page ebook (papainshape.com/ebooks/carb-cycling/landing)
   → VSL (page de confirmation)
   → Bon de commande + bump
   → Upsells
```

À étudier comme référence de structure et de copy.

---

## Advertorial (optionnel)

Page de contenu qui pré-vend avant la page produit.
Format qui marche : **le "Top 5"**.

```
"Dans cette page, nous allons analyser le top 5 des [PRODUITS].
Nous avons choisi 3 critères : [qualité], [durabilité], [prix]."
[Tableau comparatif]
[Ton produit arrive en n°1]
```

⚠️ Astuce : les produits 2, 3, 4, 5 doivent aussi être à toi, sur d'autres
noms de domaine.

Usage rare, surtout en e-commerce. Pas une priorité.
