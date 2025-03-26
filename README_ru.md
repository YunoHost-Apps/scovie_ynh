<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Scovie для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/scovie)](https://ci-apps.yunohost.org/ci/apps/scovie/)
![Состояние работы](https://apps.yunohost.org/badge/state/scovie)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/scovie)

[![Установите Scovie с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=scovie)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Scovie быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

[Scovie](https://github.com/eldertek/scovie) is an open-source digital signage system for high schools, built using Python and Django.
It provides an easy-to-use interface for administrators to upload and manage multimedia content, which is then displayed on screens throughout the school.

## Links

* Report a bug about this package: <https://github.com/eldertek/scovie/issues>
* PyPi package: <https://pypi.org/project/scovie/>


**Поставляемая версия:** 0.0.6~ynh4

**Демо-версия:** <https://scovie.eclipse-technology.eu>

## Снимки экрана

![Снимок экрана Scovie](./doc/screenshots/all.png)

## Документация и ресурсы

- Репозиторий кода главной ветки приложения: <https://github.com/eldertek/scovie>
- Магазин YunoHost: <https://apps.yunohost.org/app/scovie>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/scovie_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/scovie_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
или
sudo yunohost app upgrade scovie -u https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
