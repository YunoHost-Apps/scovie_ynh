#!/bin/bash

#=================================================
# COMMON VARIABLES
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

log_path=/var/log/$app
log_file="${log_path}/${app}.log"

#=================================================
# PERSONAL HELPERS
#=================================================

_install_scovie_venv() {
    ynh_exec_as "$app" python3 -m venv --upgrade "$install_dir/venv"

    venvpython="$install_dir/venv/bin/python3"

    ynh_add_config --template="requirements.txt" --destination="$install_dir/requirements.txt"

    ynh_exec_as "$app" "$venvpython" -m ensurepip
    ynh_exec_as "$app" "$venvpython" -m pip install --upgrade wheel pip setuptools
    ynh_exec_as "$app" "$venvpython" -m pip install --no-deps -r "$install_dir/requirements.txt"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
