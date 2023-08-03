# domain-detective
domain-detective is for a list of your domains that checks them after opening terminal, and if a domain is open, it will inform you.
## installation
#### 1. Clone this repository on your system:
```bash
$ git clone git@github.com:the-pesar/domain-detective.git
# git clone https://github.com/the-pesar/domain-detective.git
```
#### 2. Install `whois`:
```bash
$ sudo apt install whois && sudo apt update
```
Go to the cloned repository 
#### 3. Set execution permission and run `setup.sh`
```bash
$ chmod +x setup.sh script.sh && sudo ./setup.sh
```
#### 4. Add your domains into `domains.txt`
```bash
$ sudo nano /etc/domain-detective/domains.txt
```
#### 5. Register the script in `~/.bashrc`:
```bash
$ echo "source $PWD/script.sh" >> ~/.bashrc
```
