# domain-detective
domain-detective is for a list of your domains that checks them after opening terminal, and if a domain is open, it will inform you.
## installation
#### 1. Clone this repository on your system:
```bash
$ git clone git@github.com:the-pesar/domain-detective.git
# git clone https://github.com/the-pesar/domain-detective.git
```
Push your domains in `script.sh` file.
#### 3. Install `whois`:
```bash
$ sudo apt install whois && sudo apt update
```
#### 3. Set execution permission and register in `~/.bashrc`:
```bash
$ chmod +x script.sh && echo "source $PWD/script.sh" >> ~/.bashrc
```
