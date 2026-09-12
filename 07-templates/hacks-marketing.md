# Hacks marketing — les tips qui rapportent tout de suite

> Source : module *Marketing Tips*. « Des petites techniques pour faire plus
> d'argent — quand tu les appliques, elles rentabilisent Business OS
> instantanément. »
>
> Format : chaque hack est **autonome et applicable aujourd'hui.**

---

## 1. Le bump pré-coché

Le plus court et le plus rentable. Un bump coché par défaut sur le bon de commande
augmente mécaniquement le taux de prise.

**Systeme.io** — à coller dans le `<head>` de la page de commande :

```html
<script>
  document.addEventListener("DOMContentLoaded", function () {
    setTimeout(function () {
      var bump = document.querySelector('input[type="checkbox"]');
      if (bump && !bump.checked) bump.click();
    }, 1000);
  });
</script>
```

*(Le principe : sélectionner la case du bump au chargement de la page et la cocher.
Adapter le sélecteur à ton builder.)*

⚠️ Vérifie que le bump reste **visible et clairement libellé** — c'est ce qui sépare
une bonne pratique de conversion d'un litige. → `05-funnel/upsells.md`

---

## 2. Ajoute un upsell. Maintenant.

> « Si tu as un funnel, tu as sûrement un produit d'appel. E-commerce, SaaS, appels
> de vente — peu importe. Une fois que la personne a acheté, propose-lui un autre
> produit à **~10 % du prix** principal. Si tu vends du pas cher, vends un produit
> cher. **Ça augmente ton revenu instantanément.** »

→ Le détail complet : `05-funnel/upsells.md`

---

## 3. ⭐ Le low ticket comme machine à leads high ticket

**Pour qui :** tout le monde qui fait du high ticket et cherche le palier suivant.

```
Ton offre high ticket        →  5 000 €  (done-with-you / done-for-you)
        │
        └──► tu la décomposes en DO IT YOURSELF  →  27 / 37 / 47 €
                    │  (MÊME acquisition de trafic qu'aujourd'hui)
                    │
                    │  Tu donnes TOUT. Vraiment tout.
                    │  « What the fuck, c'est quoi cette formation à 47 € ?
                    │    Yomi la vendrait 997 € et la brade à 697 en webinaire »
                    ▼
        Chaque acheteur (SANS EXCEPTION) est rappelé par un SETTER
        + un CTA dans les onglets de la formation pour booker un appel
                    ▼
                 Appel  →  offre à 5 000 €
```

> **Ce que tu vends à 47 € : le SYSTÈME et l'information.
> Ce que tu vends en high ticket : l'IMPLÉMENTATION.**
>
> « La plupart des gens ne savent pas vraiment implémenter. C'est aussi pour ça
> qu'on a un gros module productivité — c'est un changement d'identité : reprendre
> le contrôle de son temps, ne plus être victime du reste. »

Le mécanisme psychologique : ils sont tellement **choqués** par la valeur reçue pour
47 € qu'ils prennent l'accompagnement done-for-you derrière.

→ Développement complet : `04-produit/low-to-high-ticket.md`
→ Productivité comme prérequis : `08-scaling/productivite.md`

---

## 4. ⭐ Le lookalike des abonnés de tes concurrents (LinkedIn → Meta)

> « Cette stratégie, je l'ai payée 5 000 € — un call à 5 000 € où le mec me l'a
> donnée. »

**Pour qui :** funnels high ticket, surtout les **call funnels**, surtout en make
money / B2B. « Minimum 10 000 €, entre 10 et 50 000 € de plus avec cette stratégie. »

```
1. Aller sur LinkedIn
2. Lister ses concurrents
3. EXPORTER leurs abonnés (outils de scraping dédiés)
4. Récupérer les emails
5. Créer un fichier .CSV (Google Sheet exporté)
        │
        ▼
6. Importer le CSV dans Facebook Ads comme AUDIENCE PERSONNALISÉE
7. Créer un LOOKALIKE à 3 % de cette audience
8. Faire tourner tes créas dessus
```

**Pourquoi ça marche :** quelqu'un qui s'abonne à un concurrent **a le problème que
tu résous.** Tu obtiens une audience ultra spécifique — ce qui est exactement
l'objectif du média buying.

⚠️ **Ce n'est pas le plus scalable** (l'audience est finie), mais le rendement est
élevé. À utiliser en complément d'un broad qui scale.
→ `02-acquisition/facebook-ads.md`

---

## 5. Espionner le ciblage de ceux qui te ciblent

Un onglet Facebook que presque personne n'utilise.

```
Tu vois une pub (Instagram ou Facebook)
  └─► les 3 petits points
        └─► « Pourquoi est-ce que je vois cette publicité ? »
              └─► "Advertiser choices" / Choix de l'annonceur
```

Tu y vois :

| Donnée | Ce que ça t'apprend |
|---|---|
| **Le ciblage réel** | Pays, langue, âge, genre. Ex. observé : « Italie, hommes, 18-34 » |
| **Les exclusions** | Ce qu'il retire de son audience |
| **Le reach** | S'il a du volume ou s'il vient de lancer |
| **Le bénéficiaire** | ⭐ Tu remontes à la **société** derrière l'annonce |

**Les deux usages :**
1. **S'inspirer d'un ciblage qui tourne.** « Italie 18-34 → tu peux le refaire en
   France, 18-34 »
2. ⭐ **Détecter les faux modèles.** « Si tu te dis *lui, il fait du fric* —
   regarde son reach. S'il ne reache rien, ferme ta gueule et ne le copie pas. »

> C'est le seul outil qui distingue **l'annonceur qui imprime** de **celui qui a
> juste l'air de le faire.**

→ Complément : la bibliothèque publicitaire Facebook, `02-acquisition/creatives-statiques.md`

---

## 6. Le cost cap sur Advantage+ (ASC) — laisser Facebook scaler à ta place

> Source : *Bonus — Scaling +30 000 €/jour* (marque e-commerce à plus d'1 M€/mois
> de CA, worldwide, principalement Top 5 + US).

### La phase de TEST : ABO / CBO mixte

```
Campagne CBO de test — budget 200 $/jour
  ├── ad set 1  ·  limite de dépense : 20 $
  ├── ad set 2  ·  limite de dépense : 20 $
  ├── ad set 3  ·  limite de dépense : 20 $
  ├── ad set 4  ·  limite de dépense : 20 $
  └── ad set 5  ·  limite de dépense : 20 $
        = 100 $ forcés (50 %), les 100 $ restants laissés à Facebook
```

> **Pourquoi la limite de dépense par ad set :** « ça force le spend et ça évite de
> laisser 100 % la main à Facebook, surtout au début, sur des créas toutes fraîches.
> Ça donne à **chaque créative une chance de performer.** Les 50 % restants,
> Facebook les met sur ce qui performe le mieux. »

**Maximum 5 créatives par ad set.** Ce qu'on A/B teste réellement : **les angles
marketing.**

### La phase de SCALING : Advantage+ Shopping + cost cap

```
Campagne ASC (Advantage+ Shopping Campaign)
  ├── Stratégie d'enchère : COST CAP = ton CPA cible pour 30 % de marge
  ├── Budget quotidien : volontairement TRÈS élevé (illimité en pratique)
  └── Contenu : tous les WINNERS + quelques créas moyennes
```

> **Le principe :** tant que Facebook acquiert des clients à ton coût cible, il peut
> continuer à dépenser sans limite. **Il scale quand il faut scaler, il descale
> quand il faut descaler.**
>
> « Entre un lundi et un dimanche, il y a une grosse différence de spend — et **à
> aucun moment je n'ai touché au budget.** C'est Facebook qui scale pour moi. »

### ⭐ Le détail qui change tout : ne mets pas QUE des winners

> « Ne garde pas que les créas gagnantes. Mets aussi des créas moyennes, qui sont
> **bottom of funnel**. Facebook crée un **écosystème** entre toutes ces créatives
> high-spend — top of funnel et bottom of funnel dans **une seule campagne** — pour
> optimiser la performance globale. »

### Le résultat

> « Je n'ai pas besoin de média buyer. **Je passe 15 minutes dessus par jour.** »

### ⚠️ Le disclaimer

> « Le média buying, ça représente **10 %**. Le 20/80, c'est les **créas**, le funnel
> global, le produit et l'offre. **Surtout les créas.** »

*(Note : le cost cap fonctionne aussi hors e-commerce, mais l'ASC est pensé pour
l'e-com. Meta sous-reporte les conversions — prévoir un facteur de correction.)*

→ `02-acquisition/facebook-ads.md` · `02-acquisition/creatives-statiques.md`

---

## 7. Le compte « avatar » sur chaque réseau

Rappel, parce que c'est le hack le plus rentable de tous et le moins appliqué :

```
Gmail neuf → YouTube + Instagram + Twitter (+ TikTok)
  → tu consommes comme TON AVATAR, 20 à 50 min/semaine
    → tu obtiens un algorithme calibré sur ton marché
```

> « En 2025, si tu n'as pas un algorithme optimisé sur ce que regarde ton avatar,
> tu es cuit. » → `02-acquisition/creatives-statiques.md` · `02-acquisition/youtube.md`

---

## 8. Faire découvrir un SaaS à la communauté (le hack d'outsourcing de contenu)

Proposé en live comme dispositif, et reproductible dans n'importe quelle communauté :

> « Vous m'envoyez un software que vous utilisez, vous faites une vidéo qui
> l'explique, on garde la meilleure — et **on met votre lien d'affiliation.**
> Vous gagnez de l'argent, moi j'outsource du contenu. Tout bénef. »

**Le principe généralisable : payer ta communauté en revenus d'affiliation plutôt
qu'en cash, pour produire ton contenu.**
→ `02-acquisition/affiliation.md`
