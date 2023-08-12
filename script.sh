#!/bin/sh

input_file="$HOME/domain-detective/domain_list.txt"
output_file="$HOME/domain-detective/available_domains.txt"

>"$output_file"

check_domain() {
  domain="$1"
  status=$(whois "$domain" | grep -E -i '(404|No match for domain|Domain not found|No Data Found|DOMAIN NOT FOUND|no entries found)($|\W)')
  if [ -n "$status" ]; then
    echo "$domain" >>$output_file
  fi
}

while IFS= read -r domain; do
  check_domain "$domain"
done <"$input_file"
