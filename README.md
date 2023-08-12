# domain-detective
domain-detective is for a list of your domains that checks them hourly, and if a domain was open, it will inform you.
## installation
#### 1. Clone this repository on your system:
```bash
$ git clone git@github.com:the-pesar/domain-detective.git
# git clone https://github.com/the-pesar/domain-detective.git
```
#### 2. Install `whois` and `crontab`:
`whois`:
```bash
$ sudo apt install whois
```
`crontab`:
```bash
$ sudo apt install cron && sudo systemctl enable cron
```
Go to the cloned repository 
#### 3. Set execution permission and run `setup.sh`
```bash
$ chmod +x setup.sh script.sh && ./setup.sh
```
#### 4. Add your domains into domain list:
```bash
$ echo "your-domain.com" >> ~/domain-detective/domain_list.txt
```
#### 5. Run the script for first time:
```bash
$ ./script.sh
```
