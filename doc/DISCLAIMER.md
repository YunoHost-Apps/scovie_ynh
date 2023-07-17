## Links

* Report a bug about this package: https://github.com/eldertek/scovie/issues
* YunoHost website: https://yunohost.org/
* PyPi package: https://pypi.org/project/scovie/

These projects used `scovie`:

* https://github.com/eldertek/scovie

---

# Developer info

The App project will be stored under `__FINALPATH__` (e.g.: `/opt/yunohost/$app`) that's Django's `settings.FINALPATH`
"static" / "media" files to serve via nginx are under `__PUBLIC_PATH__` (e.g.: `/var/www/$app`) that's `settings.PUBLIC_PATH`

## package installation / debugging

This app is not in YunoHost app catalog. Test install, e.g.:
```bash
~# git clone https://github.com/eldertek/scovie_ynh.git
~# yunohost app install scovie_ynh/ -f
```
To update:
```bash
~# cd scovie_ynh
~/scovie_ynh# git fetch && git reset --hard origin/testing
~/scovie_ynh# yunohost app upgrade scovie_ynh -u . -F
```

To remove call e.g.:
```bash
sudo yunohost app remove scovie_ynh
```

Backup / remove / restore cycle, e.g.:
```bash
yunohost backup create --apps scovie_ynh
yunohost backup list
archives:
  - scovie_ynh-pre-upgrade1
  - 20201223-163434
yunohost app remove scovie_ynh
yunohost backup restore 20201223-163434 --apps scovie_ynh
```

Debug the installation, e.g.:
```bash
root@yunohost:~# cat /etc/yunohost/apps/scovie_ynh/settings.yml
...

root@yunohost:~# ls -la /var/www/scovie_ynh/
total 18
drwxr-xr-x 4 root root 4 Dec  8 08:36 .
drwxr-xr-x 6 root root 6 Dec  8 08:36 ..
drwxr-xr-x 2 root root 2 Dec  8 08:36 media
drwxr-xr-x 7 root root 8 Dec  8 08:40 static

root@yunohost:~# ls -la /opt/yunohost/scovie_ynh/
total 58
drwxr-xr-x 5 scovie_ynh scovie_ynh   11 Dec  8 08:39 .
drwxr-xr-x 3 root        root           3 Dec  8 08:36 ..
-rw-r--r-- 1 scovie_ynh scovie_ynh  460 Dec  8 08:39 gunicorn.conf.py
-rw-r--r-- 1 scovie_ynh scovie_ynh    0 Dec  8 08:39 local_settings.py
-rwxr-xr-x 1 scovie_ynh scovie_ynh  274 Dec  8 08:39 manage.py
-rw-r--r-- 1 scovie_ynh scovie_ynh  171 Dec  8 08:39 secret.txt
drwxr-xr-x 6 scovie_ynh scovie_ynh    6 Dec  8 08:37 venv
-rw-r--r-- 1 scovie_ynh scovie_ynh  115 Dec  8 08:39 wsgi.py
-rw-r--r-- 1 scovie_ynh scovie_ynh 4737 Dec  8 08:39 scovie_ynh_demo_settings.py

root@yunohost:~# cd /opt/yunohost/scovie_ynh/
root@yunohost:/opt/yunohost/scovie_ynh# source venv/bin/activate
(venv) root@yunohost:/opt/yunohost/scovie_ynh# ./manage.py check
scovie_ynh v0.8.2 (Django v2.2.17)
DJANGO_SETTINGS_MODULE='scovie_ynh_demo_settings'
PROJECT_PATH:/opt/yunohost/scovie_ynh/venv/lib/python3.7/site-packages
BASE_PATH:/opt/yunohost/scovie_ynh
System check identified no issues (0 silenced).

root@yunohost:~# tail -f /var/log/scovie_ynh/scovie_ynh.log
root@yunohost:~# cat /etc/systemd/system/systemd.service
...

root@yunohost:~# systemctl reload-or-restart scovie_ynh
root@yunohost:~# journalctl --unit=scovie_ynh --follow
```
