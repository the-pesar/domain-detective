#!/bin/bash

# configs
mkdir -p "$HOME/domain-detective"
touch "$HOME/domain-detective/domain_list.txt" "$HOME/domain-detective/available_domains.txt"
echo -e "test.ir\nexample.com\ndomain.org" >"$HOME/domain-detective/domain_list.txt"
cp script.sh "$HOME/domain-detective/script.sh"
(
  crontab -l
  echo "0 * * * * $HOME/domain-detective/script.sh"
) | crontab -

# crontab
echo '
while IFS= read -r domain; do
  echo "domain $domain is available!"
done < "$HOME/domain-detective/available_domains.txt"' >>~/.bashrc

# systemd
# touch /etc/systemd/system/domain-detective.service
# echo "[Unit]
# Description=My Domain Detective Service
# After=network.target

# [Service]
# Type=simple
# ExecStart=/etc/domain-detective/script.sh

# [Install]
# WantedBy=multi-user.target" > /etc/systemd/system/domain-detective.service
# sudo systemctl daemon-reload
# sudo systemctl enable domain-detective.service
# sudo systemctl start domain-detective.service
