# Installer Nuvio (version famille)

Compter 15 minutes sur une TV, 5 minutes sur un ordinateur. Il faut :

- la TV (Android TV, Google TV, Nvidia Shield, Chromecast avec Google TV, Fire TV…) ou l'ordinateur ;
- votre téléphone (pour la TV) ;
- votre compte **Stremio** (adresse e-mail et mot de passe).

Sur ordinateur ou tablette, aller directement à [la partie ordinateur](#sur-un-ordinateur-windows-ou-mac).

> **Astuce clavier :** taper avec la télécommande est lent. Sur le téléphone, l'appli **Google Home** (ou **Google TV**) a une télécommande avec une icône **clavier** : ce que vous tapez sur le téléphone s'écrit sur la TV. Le téléphone doit être sur le même Wi-Fi que la TV.

## 1. Installer l'appli « Downloader »

Sur la TV, ouvrir le **Play Store** (ou l'**Appstore** sur Fire TV), chercher **Downloader** (icône orange, éditeur AFTVnews) et l'installer.

> **Fire TV seulement :** autoriser Downloader à installer des applis : **Paramètres → Ma Fire TV → Options pour les développeurs → Installer des applis inconnues → Downloader : Activé**. Si « Options pour les développeurs » n'apparaît pas : **Paramètres → Ma Fire TV → À propos**, puis appuyer **7 fois** sur le nom de l'appareil (« Fire TV Stick »…), et revenir en arrière.

## 2. Télécharger Nuvio

1. Ouvrir **Downloader**. S'il demande l'accès aux fichiers, accepter.
2. Dans la barre d'adresse, taper :

   ```
   github.com/jozrcr/familystream-releases/releases/latest/download/familystream.apk
   ```

3. Valider avec **Go** : le téléchargement démarre (environ 140 Mo).
4. Quand il est fini, choisir **Installer**.
   - La première fois, Android indique que Downloader n'a pas le droit d'installer des applis. Choisir **Paramètres**, activer **Autoriser cette source**, revenir en arrière, puis **Installer**.
   - Si **Google Play Protect** prévient que l'appli est inconnue ou bloquée : **Plus d'infos** (ou **Détails**) → **Installer quand même**. C'est normal pour une appli qui ne vient pas du Play Store.
5. Une fois installée, Downloader propose de supprimer le fichier téléchargé : **Supprimer** (il ne sert plus).

## 3. Premier lancement

1. Ouvrir **Nuvio** (dans la liste des applis ; sur Google TV : **Applis → Voir tout**).
2. « Choisissez votre expérience Nuvio » : **Essentiel** (déjà sélectionné), **OK**.
3. L'écran **Bienvenue !** propose **Importer depuis Stremio** :
   - un QR code s'affiche : le scanner avec l'appareil photo du téléphone ;
   - se connecter à Stremio sur le téléphone et valider ;
   - Nuvio récupère tout : vos films et séries, où vous en étiez, ce que vous avez déjà vu, **et les extensions** qui trouvent les vidéos. Rien d'autre à configurer.
4. « Comment regardez-vous ? » : **Version originale, sous-titres français** est recommandé. Pour regarder en français, choisir **Version française (VF)**. Ça se change ensuite dans **Paramètres → Profils → Langues de ce profil**.

C'est prêt.

## Sur un ordinateur (Windows ou Mac)

1. Télécharger l'installateur (cliquer sur le lien) :
   - **Windows** : [familystream-pc-windows-x64.msi](https://github.com/jozrcr/familystream-releases/releases/latest/download/familystream-pc-windows-x64.msi)
   - **Mac récent** (puce Apple M1, M2…, depuis fin 2020) : [familystream-pc-macos-arm64.dmg](https://github.com/jozrcr/familystream-releases/releases/latest/download/familystream-pc-macos-arm64.dmg)
   - **Mac plus ancien** (Intel) : [familystream-pc-macos-x86_64.dmg](https://github.com/jozrcr/familystream-releases/releases/latest/download/familystream-pc-macos-x86_64.dmg)
2. Installer. L'installateur n'est pas signé (ça coûte cher pour une appli de famille) : les avertissements ci-dessous sont normaux.
   - **Windows** :
     - si le navigateur dit que le fichier « n'est pas fréquemment téléchargé » : **⋯** (ou la flèche) → **Conserver** → **Conserver quand même** ;
     - ouvrir le fichier ; si « Windows a protégé votre ordinateur » s'affiche : **Informations complémentaires** → **Exécuter quand même** ;
     - « Voulez-vous autoriser cette application à apporter des modifications ? » : **Oui** ;
     - Nuvio apparaît sur le bureau et dans le menu Démarrer.
   - **Mac** :
     - ouvrir le fichier téléchargé, glisser **Nuvio** dans **Applications** ;
     - ouvrir Nuvio depuis Applications : macOS dit qu'il ne peut pas vérifier l'appli → **Terminé** ;
     - **Réglages Système → Confidentialité et sécurité**, tout en bas : **Ouvrir quand même** → **Ouvrir** (mot de passe du Mac si demandé). Une seule fois.
3. Ouvrir **Nuvio** : il démarre directement, sans compte à créer, et la fenêtre **Importer depuis Stremio** s'ouvre. **Se connecter à Stremio** : le navigateur s'ouvre, connectez-vous à Stremio et validez. Nuvio récupère vos films et séries, vos reprises, ce que vous avez vu et les extensions.
4. Langues : **VO avec sous-titres français** par défaut. Pour changer : **Paramètres → Lecture → Langues de ce profil**.

Ensuite tout marche comme sur la TV : le grand bouton ▶, l'épisode suivant ou précédent (⏮ ⏭ dans le lecteur, ou **Maj+P** / **Maj+N** au clavier). Les mises à jour se proposent toutes seules.

## Sur une tablette Android

Depuis le navigateur de la tablette, ouvrir [familystream-tablet-arm64-v8a.apk](https://github.com/jozrcr/familystream-releases/releases/latest/download/familystream-tablet-arm64-v8a.apk), puis ouvrir le fichier téléchargé et autoriser l'installation (même principe qu'à l'étape 2 sur la TV). Ensuite, comme sur ordinateur : Nuvio démarre directement et propose **Importer depuis Stremio**.

## Au quotidien

- **Le grand bouton ▶** en haut de l'écran des sources choisit tout seul la meilleure vidéo : la bonne langue, les bons sous-titres, la meilleure qualité. En dessous, un bouton par qualité, et un bouton **VF** pour la version française.
- **Séries :** à la fin d'un épisode, le suivant démarre tout seul. Après 3 épisodes d'affilée, Nuvio demande si vous regardez toujours.
- **Avancer / reculer :** chaque appui sur ◀ ▶ va plus loin (10 s, 20 s, 40 s…), et l'écran indique où vous arriverez.
- **Rechercher :** le bouton micro de la télécommande, ou le clavier du téléphone.
- **Pour toi** (menu de gauche) : des idées de films et séries selon ce que vous regardez.

## Trakt (facultatif) : reprendre sur un autre écran

Avec un compte **Trakt** (gratuit, sur trakt.tv), Nuvio retient où vous en êtes (épisodes vus, reprises) sur tous vos écrans reliés au même compte : un film commencé sur la TV reprend au même endroit sur l'ordinateur.

1. Sur la TV : **Paramètres → Suivi → Trakt**. Sur ordinateur : **Paramètres → Trakt → Se connecter**. Un code s'affiche.
2. Sur le téléphone, aller sur **trakt.tv/activate**, se connecter et entrer le code.
3. Sur la TV, votre historique (films et épisodes vus, reprises) est copié automatiquement vers Trakt ; un message le confirme quelques secondes plus tard.

À faire après l'import Stremio, de préférence, et d'abord sur la TV. Votre liste (bibliothèque) reste propre à chaque écran : c'est l'import Stremio qui la remplit.

## Les mises à jour

Quand une nouvelle version sort, un bandeau **« Mise à jour disponible »** apparaît en haut de l'écran d'accueil, avec **Télécharger** déjà sélectionné : appuyer sur **OK**, puis **Installer**. La première fois, Android demande d'autoriser Nuvio à installer des applis : même manipulation qu'à l'étape 2.

## Enceinte Bluetooth : des voix plus claires

Pendant un film, ouvrir le menu **audio** du lecteur (icône haut-parleur) :

- monter **« Downmix : niveau du canal central »** à environ **+6 dB** : les voix sont plus fortes sans que les explosions le soient ;
- activer **« Conserver entre les sessions »** pour que ce réglage reste.

Si les lèvres ne sont pas synchronisées avec le son, régler **« Délai audio »** dans ce même menu.

## En cas de souci

- **D'abord : Paramètres → À propos → État de Nuvio.** Chaque ligne devrait être verte ; sinon, lisez-moi ce qui est écrit (on y voit aussi la version installée).
- **Aucune vidéo ne se lance, ou « aucune source »** : regarder l'État de Nuvio, puis appelez-moi. Il faut sans doute vérifier les extensions du compte Stremio.
- **Une vidéo ne marche pas** : pendant la lecture, le bouton **Sources** du lecteur propose en haut un autre choix automatique, sinon toute la liste.
- **Sous-titres décalés** : dans le menu sous-titres du lecteur, essayer un autre fichier de sous-titres.
- **Couleurs ternes ou délavées, ou son Dolby Atmos mal rendu** : **Paramètres → Profils → Choix automatique de la source**. HDR : **Sans HDR** (par défaut, **Auto** écarte déjà le HDR si la TV ne l'affiche pas). Dolby Atmos : **Sans Atmos**.

## À propos de ces versions

Versions de Nuvio préparées pour la famille. **Ce n'est pas une version officielle de Nuvio.**

Chaque version contient :

- l'application pour TV et boîtiers Android : `familystream.apk` (tous appareils), `arm64-v8a` (Shield et la plupart des appareils récents) ou `armeabi-v7a` (appareils 32 bits) ;
- l'application pour tablettes Android : `familystream-tablet-arm64-v8a.apk` (la plupart des tablettes) ;
- l'application pour PC : `familystream-pc-windows-x64.msi` (Windows) ou `familystream-pc-macos-arm64.dmg` / `-x86_64.dmg` (Mac récent / ancien) ;
- le code source correspondant (`*-source.tar.gz`).

Les installateurs PC sont construits ici par GitHub Actions (onglet *Actions*, « PC installers »).

Une fois installée, l'application propose elle-même les nouvelles versions au démarrage.

## Licence

Versions modifiées de [Nuvio TV](https://github.com/NuvioMedia/NuvioTV), [Nuvio Mobile](https://github.com/NuvioMedia/NuvioMobile) et [Nuvio Desktop](https://github.com/NuvioMedia/NuvioDesktop), distribuées sous licence GPL-3.0 (voir `LICENSE`). Le code source de chaque version est joint à celle-ci ; `FORK.md` dans chaque archive décrit les modifications.
