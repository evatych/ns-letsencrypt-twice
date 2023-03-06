#!/bin/bash
export counter_file=$(mktemp "/opt/ns-letsencrypt-twice/.counter.XXXXXX")
export connect_file=$(mktemp "/opt/ns-letsencrypt-twice/.connect.XXXXXX")
printf '%s\n' "0" >"$connect_file"

#Normal usage
/opt/ns-letsencrypt-twice/dehydrated/dehydrated -c -f /opt/ns-letsencrypt-twice/config.sh -k /opt/ns-letsencrypt-twice/ns-hook.sh
#Cleanup unused certs
/opt/ns-letsencrypt-twice/dehydrated/dehydrated -gc -f /opt/ns-letsencrypt-twice/config.sh
