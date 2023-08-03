#!/bin/bash

mkdir -p /etc/domain-detective

if [ ! -f /etc/domain-detective/domains.txt ]; then
  touch /etc/domain-detective/domains.txt
fi

readarray -t domains < /etc/domain-detective/domains.txt

function check_domain {
  domain=$1
  status=$(whois $domain | grep -E '\b(?:no entries found|No match for domain|Domain not found|No Data Found|DOMAIN NOT FOUND)\b')
  if [[ -n "$status" ]]; then
    echo "domain $domain is available!"
  fi
}

for domain in "${domains[@]}"; do
  check_domain "$domain"
done
