#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

ynh_current_host=$(cat /etc/yunohost/current_host)

# ARGUMENTS FROM CONFIG PANEL

# 'debug_enabled' -> '__DEBUG_ENABLED__' -> settings.DEBUG
debug_enabled="0"

# 'log_level' -> '__LOG_LEVEL__' -> settings.LOG_LEVEL
log_level="WARNING"

# 'admin_email' -> '__ADMIN_EMAIL__' add in settings.ADMINS
admin_email="${admin}@${domain}"

# 'default_from_email' -> '__DEFAULT_FROM_EMAIL__' -> settings.DEFAULT_FROM_EMAIL
default_from_email="${app}@${domain}"

#REMOVEME? install_dir=/opt/yunohost/$app
log_path=/var/log/$app
log_file="${log_path}/${app}.log"

_install_scovie_venv() {
    pushd $install_dir
        python3 -m venv $install_dir/venv
        ynh_config_add --template="requirements.txt" --destination="$install_dir/requirements.txt"
        ynh_hide_warnings $install_dir/venv/bin/pip ensurepip
        ynh_hide_warnings $install_dir/venv/bin/pip pip install --upgrade wheel pip setuptools
        ynh_hide_warnings $install_dir/venv/bin/pip pip install --no-deps -r "$install_dir/requirements.txt"
    popd
}
