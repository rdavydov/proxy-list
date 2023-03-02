service cron start
crontab -l > mycron
echo "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" >> mycron
echo "*/30 * * * * /root/proxy-list/cron.sh" >> mycron
crontab mycron
rm mycron
