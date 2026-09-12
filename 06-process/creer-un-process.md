# Créer un process (et automatiser son business)

> Source : Live 25 — Process et automatisation.
> Contexte : Valère venait de passer **~200 heures sur 2 semaines** à refaire tous
> les process de deux business — l'un parce qu'il y avait recruté un CEO pour le
> faire tourner sans lui, l'autre parce qu'il le lançait.

> « Le game, c'est les process. Tu es **obligé** de passer par là pour passer de
> *je fais un peu d'argent* à *putain, ça brasse*. Et tu es obligé de repasser par
> là pour passer de *ça brasse* à *j'ai une partie du PIB mondial*. »

**L'argument d'échelle :** Amazon a **1 556 000 employés** — l'équivalent de 70 %
de la population de Paris qui travaille pour une seule personne. Ce n'est possible
que par les process.

---

## ⚠️ Les 3 prérequis

Avant de processer quoi que ce soit :

1. **Tu as un peu d'argent** — il faut payer des gens
2. **Tu sais déjà ce que tu fais**
3. ⭐ **Tu sais que ton truc marche**

> « C'est bien beau de créer un process, mais si tu processes un truc de merde, tu
> te tires une balle dans le pied : tu automatises quelque chose de mauvais. »

---

## La méthode en 5 étapes

```
1. LISTER LES RESSOURCES
2. MAPPER LES POSSIBILITÉS  (+ bonus : noter les cas de figure)
3. DESSINER LA CHAÎNE DE PRODUCTION
4. ASSIGNER humains et SaaS à chaque étape
5. METTRE AU PROPRE  →  ressources · process · testing · relecture
```

Le fil rouge de la démonstration en live : **automatiser la création d'un shop
e-commerce**, de la recherche produit au lancement des ads.
*(Le modèle marche pour n'importe quel business : call funnel, SaaS, une partie
du marketing, n'importe quoi.)*

---

## Étape 1 — Lister les ressources

Tout ce qui est à disposition. Commence par l'**humain** :

```
2 × Virtual Assistant
1 × Média buyer
1 × Funnel builder
1 × Copywriter
1 × Monteur vidéo
```

C'est tout. Cette liste va contraindre tout le reste.

---

## Étape 2 — Mapper les possibilités

On liste **toutes** les étapes du process, dans le désordre s'il faut, puis on les
regroupe en grandes parties.

Exemple e-commerce, découpé en 3 blocs :

| Bloc | Étapes |
|---|---|
| **1. Sourcing** | Recherche produit selon critères → lister dans un Sheet → évaluer le taux de réussite → sourcer le produit |
| **2. Building** | Build sur Shopify → plugins + automatisations → vérification du shop |
| **3. Marketing** | Mettre les créas best-sellers dans un Drive → faire les créas → montage → lancer les ads |

---

## Étape 3 — Dessiner la chaîne de production

C'est là que le dessin fait le travail à ta place.

```
Recherche  ──►  Lister    ──►  Évaluer le   ──►  Sourcer  ──┬──►  Build Shopify  ──►  Plugins  ──►  Vérif shop ──┐
produit         (Sheet)        taux de           produit    │                                                     │
(critères)                     réussite                     │                                                     ▼
                                  │                         └──►  Créas BS       ──►  Faire     ──►  Montage  ──► LANCER
                              > 80 % win?                          dans un Drive       les créas                   LES ADS
```

**Pourquoi on dessine sur un tableau blanc :** en voyant le schéma, Valère réalise
en direct une erreur de séquençage.

> « Pourquoi j'attends la vérification du shop par le copywriter pour faire les
> créas, alors qu'on sait déjà ce qu'on vend et qu'on a déjà l'angle marketing ? »

→ Il déplace le bloc créas **en parallèle** du build. **Le dessin révèle les
dépendances inutiles.** Tout ce qui peut être simultané doit l'être.

---

## Étape 4 — Assigner les humains (code couleur)

Chaque étape reçoit une couleur = un rôle.

| Rôle | Étapes attribuées |
|---|---|
| 🟡 **VA** | Recherche produit · listing · évaluation · sourcing · créas BS dans le Drive · vérif shop |
| 🟢 **Funnel builder** | Build Shopify · plugins & automatisations |
| 🟠 **Copywriter** | Faire les créas · vérif shop |
| 🔴 **Monteur vidéo** | Montage |
| 🔵 **Média buyer** | Lancer les ads |

> « Voilà comment on fait 1 M€/mois sans travailler. »

### ⭐ La loi de la granularité

> **Plus le prestataire est expert dans sa zone de génie, moins on standardise
> ce qu'il fait.**

Le média buyer et le copywriter ont **une seule case chacun** — et ce sont les
plus importantes. Le VA a six cases ultra détaillées.

> « Je pourrais mettre des VA partout et écrire un SOP pour faire de bonnes créas.
> Si je voulais, je pourrais. Mais lancer les ads, c'est la zone de génie. »

### Sur la compétence des VA

> « Mes VA ne sont pas des cons, ce sont des humains. Je travaille avec des gens
> qui ont un cerveau — s'ils n'y arrivent pas, je leur fais un Loom une fois.
>
> **Mais** si tu bosses avec un profil qui a besoin de "étape 1, étape 2, étape 3"
> — sinon il fait littéralement ce qui est écrit et rien d'autre — alors tu dois
> tout détailler : va sur Google.com, tape le nom du site, rentre ton login… »

Adapte la granularité au profil, pas l'inverse.

---

## Étape 5 — Mettre au propre

> « Je vous préviens, c'est la partie chiante. Jusqu'ici c'était du bonheur. Là on
> passe du schéma à **toutes les possibilités prises en compte, pour que jamais ça
> ne puisse foirer.** »

### La structure de fichiers

```
📁 Drive « Process — [nom du business] »
   ├── 📄 Process global : Partie 1 — Sourcing produit
   ├── 📄 Process : Partie 2 — Building + domaine
   ├── 📄 Process : Partie 3 — Marketing
   ├── 📊 Sheet : Listing produits  (avec les formules d'évaluation)
   ├── 📄 Process : Sourcing Aliexpress
   └── 📁 [Nom du shop]
         ├── 📊 Sheet : produits sourcés
         └── 📁 Créas
```

### Les règles de rédaction

1. **Le nom du rôle en gras**, jamais le nom de la personne
   > *« Je préfère "VA" — comme ça je peux mettre n'importe quel VA dessus. Si je
   > mets le nom de mon VA et qu'il change, tout casse. »*
   > *(Exception : les rôles très stables et les gros postes.)*
2. **Un lien cliquable** vers chaque ressource, à chaque mention
3. Des **conditions explicites** : `SI le shop correspond aux critères, ALORS…`
4. Les **critères chiffrés**, jamais « un bon shop »

### Exemple de rédaction, mot pour mot

> **Étape 1 — Recherche produit**
> Aller sur **pipiads.com**. Filtrer les shops selon les critères suivants :
> — le shop tourne en Facebook Ads
> — dépense > 500 $/jour
> — AOV > 40 $
>
> **Étape 2** — Si le shop correspond aux critères, **le VA** met l'URL dans
> → [lien vers *Listing produits*]
>
> **Étape 3** — Checker le chiffre d'affaires sur **shophunter.io** → [lien vers le tuto]
>
> **Étape 4** — Si le shop a **> 100 % de win rate**, alors **le VA** crée un
> dossier Drive nommé *[nom du shop]* et y crée un Sheet sur ce modèle :
> `nom produit | URL | prix d'achat | prix de vente` → [screenshot du modèle]
>
> **Étape 5** — Télécharger les images produit et les mettre dans le Drive.
> Si le produit exact n'existe pas sur Aliexpress → suivre [process Aliexpress].

### ⭐ Le déclencheur — ce qui te sort de l'équation

C'est **le** point qui transforme une checklist en système.

```
❌ SANS déclencheur
   VA finit → prévient VALÈRE → Valère prévient le Funnel Builder → il commence

✅ AVEC déclencheur
   VA finit → poste dans Slack : « @funnel-builder, le shop [nom] est prêt.
              Toutes les infos sont dans le Drive [lien] et le Sheet [lien].
              Détails à modifier : … »
           → le document du Funnel Builder commence par :
             « QUAND tu reçois le message du VA, étape 1 : créer un compte Shopify »
```

> « On skip moi, et ça se fait automatiquement. »

**Chaque partie du process commence par son déclencheur et finit par le message
qui déclenche la partie suivante.** C'est la transition automatique des rôles.

### Les formules dans le Sheet

L'évaluation n'est pas laissée au jugement du VA : elle est **calculée**.

À partir du CPA, du CPC et de l'AOV, le Sheet dérive automatiquement le taux de
conversion, le revenu, le ROI — puis un **win rate** (ici : ROI ÷ 2, pour tester
« et si on était deux fois moins bons ? »). Le tout mis en tableau triable par
win rate décroissant.

> **Conséquence :** « Le VA ne peut pas faire d'erreur. La seule erreur possible
> vient de moi — si ma formule est mauvaise. »

C'est le vrai objectif d'un process : **déplacer le risque d'erreur de l'exécutant
vers le concepteur.**

---

## Où sont les vraies contraintes

Question posée en live : *« tu ne mets pas de deadline de rendement à tes VA ? »*

> « Non. **Ce ne sont pas les assistants qui doivent avoir des deadlines.**
> Mon VA peut lister 10 shops par jour. Mais je ne peux pas *builder* 10 shops par
> jour, ni lancer 10 campagnes par jour. »

```
VA : capacité 10/jour  ──►  Funnel builder : 2/jour  ──►  Média buyer : 2/jour
      ▲ pas la contrainte        ▲ LA CONTRAINTE
```

La règle appliquée : **avant de lancer le process, exiger un stock d'avance**
(« je veux 10-20 lignes dans le Sheet avant qu'on démarre »), puis piloter sur le
goulot.
→ `01-principes/modele-mental.md` § Input/Process/Output

---

## Sur l'IA dans les process

Question posée, réponse sans détour :

> « Je n'utilise aucun agent IA pour automatiser mes process. Je suis de la bonne
> vieille école : **les humains.** Le souci avec les agents IA, c'est qu'un mec va
> te facturer 10 000 balles alors que tu payes des assistants 1 000 € par mois qui
> le font aussi bien, voire mieux. »

*(L'IA reste utilisée en production — créas, ad copy. Voir
`07-templates/prompts-ia.md`. C'est l'**orchestration** qui reste humaine.)*

---

## Les VA — ce qui ressort du live

| Question | Réponse |
|---|---|
| **Où recruter** | Sites de freelance (Onlinejobs.ph, Fiverr) — ou **dans sa propre communauté** |
| **Combien** | ~1 000 €/mois pour un VA français qualifié ; ~600 €/mois en entrée de gamme. « Un assistant à 600 balles peut faire des trucs à la journée » |
| **Comment sélectionner** | « J'en prends 10, j'en garde 1. J'en prends 100, j'en sélectionne 10, j'en garde 1 » → `08-scaling/equipe-et-structure.md` |
| **Payé** | Au mois, pas à la tâche. « Il y a des mois où ils peuvent quasiment rien faire » |
| **Outil de gestion** | **Telegram** pour tout. « Pas de règle — c'est juste comme ça que je fonctionne » |
| **Organisation type** | 1 VA perso (vols, hôtels) · 1 VA généraliste (remboursements, abonnements, formules) · 1 à 3 VA **spécialisés par business** |

### Pourquoi ils restent

> « J'ai tendance à confondre mes ambitions avec celles des autres. Toi tu veux
> faire 4 M€/jour, t'expatrier, acheter des montres. **Eux veulent juste arrêter
> leur taf de merde.** Ou ils sont jeunes, ils ont dit fuck les études, ils veulent
> voyager. Le mec est en Thaïlande, il se prend 1 000 balles par mois en travaillant
> peu, **il ne prend aucun risque**, et il sait que dans 2-3 ans il aura de l'argent. »

Et le bonus non monétaire : **ils sont payés en information.**
> « Il est à l'intérieur de mon business. Il voit littéralement ce genre de process.
> S'il a de grosses ambitions, il voit comment ça marche. Tant mieux pour lui. »

**La démonstration en direct :** un membre signale un bug vidéo sur la plateforme.
Valère fait un screenshot, l'envoie à son assistant. **6 minutes plus tard :
« c'est réglé ».** Sans une ligne d'instruction supplémentaire.
→ `01-principes/modele-mental.md` § WHO not HOW

---

## Ce que le process change vraiment

> « C'est la première chose que je fais quand j'arrive dans un business. C'est la
> structure, c'est **le run**. Et c'est pour ça que c'est cheaté : je passe de
> *entrepreneur normal* à **une team, des capitaux, un système.**
>
> À partir de là, la stratégie devient : *est-ce que j'ai un système qui marche ?*
> Oui → boum, je le branche. »

> **« Il est très rare que vous fassiez trop de process dans votre business. Et si
> ça arrive, c'est sûrement que vous faites déjà beaucoup d'argent. »**

⚠️ Diagnostic livré tel quel : *« je vois encore des gens qui font de beaux
chiffres et qui ne font pas ça. »*

---

## Rappel d'arbitrage, en passant

Question d'un membre : *« mon SLO résout déjà plusieurs problèmes ; je découpe mes
OTO par problème spécifique ? »*

> « **Ce n'est pas possible que tu résolves tout.** Même Amazon ne résout pas tout,
> même Facebook. Il y a forcément des problèmes que ton prospect a et que tu peux
> encore résoudre. »

→ `05-funnel/upsells.md`
