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


#REMOVEME? install_dir=/opt/yunohost/$app
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

# get the first available redis database
#
# usage: ynh_redis_get_free_db
# | returns: the database number to use
ynh_redis_get_free_db() {
    local result max db
    result=$(redis-cli INFO keyspace)

    # get the num
    max=$(cat /etc/redis/redis.conf | grep ^databases | grep -Eow "[0-9]+")

    db=0
    # default Debian setting is 15 databases
    for i in $(seq 0 "$max")
    do
        if ! echo "$result" | grep -q "db$i"
        then
            db=$i
            break 1
        fi
        db=-1
    done

    test "$db" -eq -1 && ynh_die "No available Redis databases..."

    echo "$db"
}

# Create a master password and set up global settings
# Please always call this script in install and restore scripts
#
# usage: ynh_redis_remove_db database
# | arg: database - the database to erase
ynh_redis_remove_db() {
    local db=$1
    redis-cli -n "$db" flushall
}
