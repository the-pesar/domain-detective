# domain-detective
domain-detective is for a list of your domains that checks them after opening terminal, and if a domain is open, it will inform you.
## installation
Push your domains in `script.sh` file.
1. Install `whois`:
```bash
$ sudo apt install whois && sudo apt update
```
2. Set execution permission and register in `~/.bashrc`:
```bash
$ chmod +x script.sh && echo "source $PWD/script.sh" >> ~/.bashrc
```
