wsl wget -c https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf
wsl sed -i 's/server=/domain-rules /g' ./*.conf
wsl sed -i 's/114.114.114.114/ -nameserver china/g' ./*.conf
wsl mv ./*.conf ../../../etc/smartdns/