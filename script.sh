#!/bin/bash

readarray -t domains < /etc/domain-detective/domains.txt

function check_domain {
  domain=$1
  status=$(whois $domain | grep -E '\b(?:404|No match for domain|Domain not found|No Data Found|DOMAIN NOT FOUND|no entries found)\b')
  if [[ -n "$status" ]]; then
    echo "domain $domain is available!"
  fi
}

for domain in "${domains[@]}"; do
  check_domain "$domain"
done
