<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Scovie untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/scovie)](https://ci-apps.yunohost.org/ci/apps/scovie/)
![Status kerja](https://apps.yunohost.org/badge/state/scovie)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/scovie)

[![Pasang Scovie dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=scovie)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Scovie secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

[Scovie](https://github.com/eldertek/scovie) is an open-source digital signage system for high schools, built using Python and Django.
It provides an easy-to-use interface for administrators to upload and manage multimedia content, which is then displayed on screens throughout the school.

## Links

* Report a bug about this package: <https://github.com/eldertek/scovie/issues>
* PyPi package: <https://pypi.org/project/scovie/>


**Versi terkirim:** 0.0.6~ynh4

**Demo:** <https://scovie.eclipse-technology.eu>

## Tangkapan Layar

![Tangkapan Layar pada Scovie](./doc/screenshots/all.png)

## Dokumentasi dan sumber daya

- Depot kode aplikasi hulu: <https://github.com/eldertek/scovie>
- Gudang YunoHost: <https://apps.yunohost.org/app/scovie>
- Laporkan bug: <https://github.com/YunoHost-Apps/scovie_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/scovie_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
atau
sudo yunohost app upgrade scovie -u https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
