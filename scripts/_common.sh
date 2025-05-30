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
    ynh_exec_as_app python3 -m venv --upgrade "$install_dir/venv"
    venvpython="$install_dir/venv/bin/python3"
    ynh_config_add --template="requirements.txt" --destination="$install_dir/requirements.txt"
    ynh_exec_as_app "$venvpython" -m ensurepip
    ynh_exec_as_app "$venvpython" -m pip install --upgrade wheel pip setuptools
    ynh_exec_as_app "$venvpython" -m pip install --no-deps -r "$install_dir/requirements.txt"
}
