#!/bin/sh
cd ~/proxy-scraper-checker
git pull
#pip install -r requirements.txt
#python main.py
#chmod +x start.sh
./start.sh
cd ~/proxy-list
rm -rf proxies*
mv ~/proxy-scraper-checker/proxies* .
git checkout --orphan latest_branch
git add -A
git commit -am "$(wc -l < proxies/http.txt) http, $(wc -l < proxies/socks4.txt) socks4, $(wc -l < proxies/socks5.txt) socks5"
git branch -D main
git branch -m main
git push -f origin main
