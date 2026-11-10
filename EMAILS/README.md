# Tous les emails d’Héritage Intact

> Généré le 14 septembre 2026 à 10:11 depuis le code du site (`src/lib/email.ts`, `sequence.ts`, `sequence-client.ts`). Ne modifiez pas ce fichier : modifiez le code, puis relancez l’export (voir le README).

Ce dossier contient **les 18 emails** que le site peut envoyer, rendus par les vrais gabarits d’envoi : même texte, mêmes objets, mêmes boutons. À l’envoi, seuls changent le prénom, les liens personnels et, dans J1 à J7, la ligne de prix.

## Les 5 fichiers, dans l’ordre du parcours

- **[1. À l’inscription](1-inscription.md)** — Envoyé à la seconde où quelqu’un laisse son prénom et son email sur la page d’accueil.
- **[2. Séquence prospect — J1 à J7](2-sequence-prospect-J1-J7.md)** — La vente du guide « Les 7 erreurs », étalée sur 7 jours selon la structure CEO (rêve, échecs, peurs, doutes, ennemi, puis deux emails de closing). Le dernier paragraphe de chaque email est ajouté à l’envoi : il affiche le prix catalogue, ou la remise encore active pour la personne avec sa date de fin.
- **[3. Juste après un achat](3-apres-achat.md)** — Emails de service liés au paiement. Ils partent toujours, même pour quelqu’un qui s’est désinscrit des offres : ce sont ses accès et son reçu.
- **[4. Prise en main du client — J1, J3, J7](4-prise-en-main-client.md)** — Aider l’acheteur à ouvrir son guide et à faire une première action. Aucune proposition commerciale.
- **[5. Proposition d’un complément — J10 et J17](5-complements-J10-J17.md)** — Après la prise en main, une proposition du produit suivant, montant calculé au moment de l’envoi (les achats déjà inclus sont déduits). Cliquer ne débite rien : la page de confirmation réaffiche le montant.

Chaque email a aussi sa **version illustrée** dans `apercu-html/` : ouvrez le fichier dans un navigateur pour le voir comme dans une boîte de réception.

## Toute la chronologie

| Quand | Email | Objet |
|---|---|---|
| Immédiatement après l’inscription. | [J0 — Le lien vers la présentation](1-inscription.md#j0-presentation) | Votre présentation, [Prénom] |
| 1 jour après l’inscription. | [J1 — Rêve](2-sequence-prospect-J1-J7.md#prospect-j1) | « Papa, maman… vous aviez pensé à nous. » |
| 2 jours après l’inscription. | [J2 — Excuser les échecs](2-sequence-prospect-J1-J7.md#prospect-j2) | Maison payée ne veut pas dire transmission préparée |
| 3 jours après l’inscription. | [J3 — Peur : ce qui ne se rattrape plus, puis la peur d’acheter levée](2-sequence-prospect-J1-J7.md#prospect-j3) | [Prénom], ce que personne ne pourra décider à votre place |
| 4 jours après l’inscription. | [J4 — Confirmer les doutes et prouver](2-sequence-prospect-J1-J7.md#prospect-j4) | « Encore une formation… et après ? » |
| 5 jours après l’inscription. | [J5 — Ennemi : personne n’est payé pour vous prévenir](2-sequence-prospect-J1-J7.md#prospect-j5) | Personne n’est payé pour vous prévenir |
| 6 jours après l’inscription. | [J6 — Closing : coût de l’attente, valeur et première action](2-sequence-prospect-J1-J7.md#prospect-j6) | 6 mois pour payer. Ensuite, la facture grossit chaque mois. |
| 7 jours après l’inscription. | [J7 — Closing final : dernière fenêtre de prix et fin de la série](2-sequence-prospect-J1-J7.md#prospect-j7) | Dernier message, [Prénom] |
| Immédiatement après le premier paiement, et à chaque demande de renvoi du lien. | [L’accès à l’espace](3-apres-achat.md#acces) | Votre accès, [Prénom] — gardez cet email |
| Immédiatement après chaque achat. Le nom du produit et le montant changent selon l’achat. | [Le reçu d’achat (exemple : le guide)](3-apres-achat.md#recu) | Votre reçu — Les 7 erreurs qui offrent votre héritage à l’État |
| 1 jour après l’ouverture de l’espace. | [C1 — Ne le rangez pas pour ce week-end](4-prise-en-main-client.md#client-c1) | Ne le rangez pas pour ce week-end |
| 3 jours après l’ouverture de l’espace. | [C2 — 10 minutes pour poser votre première question](4-prise-en-main-client.md#client-c2) | 10 minutes pour poser votre première question |
| 7 jours après l’ouverture de l’espace. | [C3 — Reprendre sans tout recommencer](4-prise-en-main-client.md#client-c3) | Reprendre sans tout recommencer |
| À partir de 10 jours après l’ouverture de l’espace. | [Complément — Mon plan adapté à ma situation](5-complements-J10-J17.md#complement-upsell1) | La règle qui compte est-elle celle qui vous concerne ? |
| À partir de 10 jours après l’ouverture de l’espace. | [Complément — Faire le point sur mon assurance-vie](5-complements-J10-J17.md#complement-upsell2) | Votre contrat dit-il encore ce que vous voulez ? |
| Jamais : le déclencheur actuel ne propose que le plan adapté ou l’assurance-vie. | [Complément — Mon dossier notaire (écrit, jamais déclenché aujourd’hui)](5-complements-J10-J17.md#complement-bump) | Le rendez-vous approche. Vos questions sont-elles prêtes ? |
| Jamais : le déclencheur actuel ne propose que le plan adapté ou l’assurance-vie. | [Complément — Dossier Testament (écrit, jamais déclenché aujourd’hui)](5-complements-J10-J17.md#complement-backend4) | Vos volontés sont-elles assez claires pour être préparées ? |
| À partir de 17 jours après l’ouverture de l’espace, et au moins 7 jours après le premier email de complément. | [Complément — le rappel (exemple : plan adapté)](5-complements-J10-J17.md#complement-rappel) | Une question en suspens mérite une prochaine action |

## Ce qui part vraiment

| Emails | Condition d’envoi dans le code |
|---|---|
| Présentation (J0), accès, reçu | Toujours, dès l’évènement (inscription, paiement). |
| Prise en main client (J1, J3, J7) | Toujours. C1 est remis à l’envoi dès l’achat, délivré 3 h plus tard dans la fenêtre 9 h - 20 h ; C2 et C3 au passage quotidien (7 h UTC). |
| Séquence prospect J1 à J7 | Toujours. J1 est remis à l’envoi dès l’inscription, délivré 3 h plus tard dans la fenêtre 9 h - 20 h ; J2 à J7 au passage quotidien. |
| Compléments J10 et J17 | Toujours, au passage quotidien. Les interrupteurs `EMAIL_MARKETING_ACTIVE` et `EMAIL_LTV_ACTIVE` ont été retirés du code le 12/09/2026. |

Tous partent de **Héritage Intact — contact@heritageintact.fr**, et les réponses arrivent sur la même adresse.

## Le pied de chaque email

- **Prospect** (J1 à J7, compléments) : « Vous recevez ce message après votre demande sur heritageintact.fr » + le lien « Me désinscrire en un clic ».
- **Client** (accès, reçu, prise en main) : « Ce message concerne votre achat Héritage Intact et son utilisation. »
- **Dans tous** : « Héritage Intact est un guide pédagogique d’information générale. Il ne constitue ni une consultation juridique, ni un conseil fiscal personnalisé. »

## Modifier un email

| Pour changer… | Fichier à modifier (dans `PROJET-HERITAGE-INTACT/site/`) |
|---|---|
| J1 à J7 | `src/lib/sequence.ts` |
| Prise en main client | `src/lib/sequence-client.ts` |
| Présentation J0, accès, reçu, compléments, ligne de prix | `src/lib/email.ts` |

Puis régénérez ce dossier, depuis `PROJET-HERITAGE-INTACT/site/` :

```
node scripts/exporter-emails.mjs
```
