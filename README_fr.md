<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Scovie pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/scovie.svg)](https://ci-apps.yunohost.org/ci/apps/scovie/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/scovie.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/scovie.maintain.svg)

[![Installer Scovie avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=scovie)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Scovie rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

[Scovie](https://github.com/eldertek/scovie) is an open-source digital signage system for high schools, built using Python and Django.
It provides an easy-to-use interface for administrators to upload and manage multimedia content, which is then displayed on screens throughout the school.

## Links

* Report a bug about this package: <https://github.com/eldertek/scovie/issues>
* PyPi package: <https://pypi.org/project/scovie/>


**Version incluse :** 0.0.6~ynh3

**Démo :** <https://scovie.eclipse-technology.eu>

## Captures d’écran

![Capture d’écran de Scovie](./doc/screenshots/all.png)

## Documentations et ressources

- Dépôt de code officiel de l’app : <https://github.com/eldertek/scovie>
- YunoHost Store : <https://apps.yunohost.org/app/scovie>
- Signaler un bug : <https://github.com/YunoHost-Apps/scovie_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/scovie_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
ou
sudo yunohost app upgrade scovie -u https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
