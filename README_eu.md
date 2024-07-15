<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Scovie YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/scovie.svg)](https://ci-apps.yunohost.org/ci/apps/scovie/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/scovie.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/scovie.maintain.svg)

[![Instalatu Scovie YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=scovie)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Scovie YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

[Scovie](https://github.com/eldertek/scovie) is an open-source digital signage system for high schools, built using Python and Django.
It provides an easy-to-use interface for administrators to upload and manage multimedia content, which is then displayed on screens throughout the school.

## Links

* Report a bug about this package: <https://github.com/eldertek/scovie/issues>
* PyPi package: <https://pypi.org/project/scovie/>


**Paketatutako bertsioa:** 0.0.6~ynh3

**Demoa:** <https://scovie.eclipse-technology.eu>

## Pantaila-argazkiak

![Scovie(r)en pantaila-argazkia](./doc/screenshots/all.png)

## Dokumentazioa eta baliabideak

- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/eldertek/scovie>
- YunoHost Denda: <https://apps.yunohost.org/app/scovie>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/scovie_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/scovie_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
edo
sudo yunohost app upgrade scovie -u https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
