# Escape game urbain : 
## Choix solutions techniques :

## Source Diapo : 
https://docs.google.com/presentation/d/1hu2rf0KCPwkC2oAI2m2gzKO5BXlIkwDb/edit?usp=sharing&ouid=113965159599470576550&rtpof=true&sd=true

### Flutter :
#### Pré requis : 
Avoir d'installé sur son poste : 
- Flutter : https://docs.flutter.dev/get-started/install
- Android studio : https://docs.flutter.dev/get-started/editor
- Node : https://nodejs.org/en/download/

En ce qui concerne les sources pour différents rendus possibles avec Flutter:  
- https://docs.flutter.dev/development/platform-integration/web/renderers

##### CanvaKit
Pour lancer un build canvakit (en release) : 
```sh
flutter build web --web-renderer canvaskit
```

##### HTML
Pour lancer un build html (en release) : 
```sh
flutter build web --web-renderer html
```

##### Android (apk)
Pour lancer un build android (ex : android-arm) (en release) : 
```sh
flutter build apk --target-platform=android-arm
```


Il est possible d'ajouter l'argument `--analyze-size` pour avoir le détails de l'espace pris pour les ressources de l'apk.

### React (PWA) : 

#### Création d'un projet react (pwa) : 
https://create-react-app.dev/docs/making-a-progressive-web-app/


#### Build react
Lancer la commande : 
```sh
npm run build
```

#### Génération d'un apk via pwabuilder : 
- Pwa builder : https://www.pwabuilder.com/reportcard?site=https://davikingcode.com/dl-works/archives/2022/escape-game-urbain-tests/react/