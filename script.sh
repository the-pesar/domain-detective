#!/bin/bash

domains=(
  example.ir
  test.ir
  domain.ir
  just-for-test.ir
)

function check_domain {
  domain=$1
  status=$(whois $domain | grep 'no entries found')
  if [[ -n "$status" ]]; then
    echo "domain: $domain is free!"
  fi
}

for domain in "${domains[@]}"; do
  check_domain "$domain"
done
