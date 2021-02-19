#!/bin/sh
#

echo "Firewall by Amine // CroHosting"
echo "Powered by CroHosting | contact@crogroup.fr"
echo "Ces régles bannissent un grand nombre d'IP qui sont utilisés pour des DDoS."
sleep 3 

# BAN AS14061
echo "Bannissement des IP DigitalOcean | AS14061"
sleep 2
echo "Chargement..."
sudo iptables -A INPUT -s 103.253.144.0/22 -j DROP
sudo iptables -A INPUT -s 104.131.0.0/18 -j DROP
sudo iptables -A INPUT -s 104.131.128.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.144.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.160.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.176.0/20 -j DROP
sudo iptables -A INPUT -s 104.131.192.0/19 -j DROP	
sudo iptables -A INPUT -s 104.131.224.0/19 -j DROP	
sudo iptables -A INPUT -s 104.131.64.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.0.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.128.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.192.0/18 -j DROP	  
sudo iptables -A INPUT -s 104.236.64.0/18 -j DROP  
sudo iptables -A INPUT -s 104.248.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 104.248.100.0/22 -j DROP	  
sudo iptables -A INPUT -s 104.248.104.0/22 -j DROP	  
sudo iptables -A INPUT -s 104.248.108.0/22 -j DROP	  
sudo iptables -A INPUT -s 104.248.112.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.128.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.144.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.160.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.16.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.176.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.192.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.208.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.224.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.240.0/20 -j DROP
sudo iptables -A INPUT -s 104.248.32.0/20 -j DROP	
sudo iptables -A INPUT -s 104.248.48.0/20 -j DROP		
sudo iptables -A INPUT -s 104.248.64.0/20 -j DROP
sudo iptables -A INPUT -s 104.248.80.0/20 -j DROP
sudo iptables -A INPUT -s 104.248.96.0/22 -j DROP
sudo iptables -A INPUT -s 107.170.0.0/17 -j DROP
sudo iptables -A INPUT -s 107.170.128.0/19 -j DROP	
sudo iptables -A INPUT -s 107.170.160.0/19 -j DROP
sudo iptables -A INPUT -s 107.170.192.0/18 -j DROP	  
sudo iptables -A INPUT -s 128.199.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 128.199.128.0/18 -j DROP	  
sudo iptables -A INPUT -s 128.199.16.0/20 -j DROP	 
sudo iptables -A INPUT -s 128.199.192.0/18 -j DROP	  
sudo iptables -A INPUT -s 128.199.32.0/19 -j DROP	
sudo iptables -A INPUT -s 128.199.64.0/18 -j DROP	  
sudo iptables -A INPUT -s 134.122.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.112.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.16.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.32.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.48.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.64.0/20 -j DROP 	 
sudo iptables -A INPUT -s 134.122.80.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.122.96.0/20 -j DROP	  
sudo iptables -A INPUT -s 134.209.0.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.112.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.128.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.132.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.136.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.140.0/22 -j DROP	  
sudo iptables -A INPUT -s 134.209.144.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.160.0/20 -j DROP	 
sudo iptables -A INPUT -s 134.209.16.0/20 -j DROP	  
sudo iptables -A INPUT -s 134.209.176.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.192.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.208.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.224.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.240.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.32.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.48.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.64.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.80.0/20 -j DROP
sudo iptables -A INPUT -s 134.209.96.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.0.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.112.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.128.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.144.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.160.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.16.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.176.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.192.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.208.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.224.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.228.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.232.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.236.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.240.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.252.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.32.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.48.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.52.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.56.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.60.0/22 -j DROP
sudo iptables -A INPUT -s 138.197.64.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.80.0/20 -j DROP
sudo iptables -A INPUT -s 138.197.96.0/20 -j DROP
sudo iptables -A INPUT -s 138.68.0.0/20 -j DROP
sudo iptables -A INPUT -s 138.68.112.0/22 -j DROP	
sudo iptables -A INPUT -s 138.68.116.0/22 -j DROP
sudo iptables -A INPUT -s 138.68.120.0/23 -j DROP
sudo iptables -A INPUT -s 138.68.122.0/23 -j DROP
sudo iptables -A INPUT -s 138.68.124.0/22 -j DROP
sudo iptables -A INPUT -s 138.68.128.0/20 -j DROP
sudo iptables -A INPUT -s 138.68.144.0/20 -j DROP
echo "100 subnet de DigitalOcean ont été ban!"
sleep 2
# BAN AS60068
echo "Bannissement des IP Datacamp Limited | AS60068 "
sleep 2
echo "Chargement..."
sudo iptables -A INPUT -s 103.15.193.0/24 -j DROP
sudo iptables -A INPUT -s 104.238.39.0/24 -j DROP
sudo iptables -A INPUT -s 104.238.44.0/24 -j DROP
sudo iptables -A INPUT -s 138.199.0.0/24 -j DROP
sudo iptables -A INPUT -s 138.199.10.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.12.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.14.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.17.0/24 -j DROP
sudo iptables -A INPUT -s 138.199.18.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.20.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.2.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.22.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.24.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.26.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.28.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.32.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.36.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.40.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.4.0/23 -j DROP
sudo iptables -A INPUT -s 138.199.51.0/24 -j DROP
sudo iptables -A INPUT -s 138.199.53.0/24 -j DROP
sudo iptables -A INPUT -s 138.199.8.0/23 -j DROP
sudo iptables -A INPUT -s 143.244.32.0/24 -j DROP
sudo iptables -A INPUT -s 143.244.33.0/24 -j DROP
sudo iptables -A INPUT -s 143.244.33.0/24 -j DROP
sudo iptables -A INPUT -s 143.244.36.0/22 -j DROP
sudo iptables -A INPUT -s 143.244.40.0/22 -j DROP
sudo iptables -A INPUT -s 143.244.44.0/22 -j DROP
sudo iptables -A INPUT -s 143.244.48.0/22 -j DROP
sudo iptables -A INPUT -s 143.244.52.0/22 -j DROP
sudo iptables -A INPUT -s 143.244.56.0/23 -j DROP
sudo iptables -A INPUT -s 143.244.58.0/23 -j DROP
sudo iptables -A INPUT -s 143.244.60.0/22 -j DROP
sudo iptables -A INPUT -s 143.244.62.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.32.0/24 -j DROP
sudo iptables -A INPUT -s 156.146.33.0/24 -j DROP
sudo iptables -A INPUT -s 156.146.34.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.36.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.38.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.40.0/24 -j DROP
sudo iptables -A INPUT -s 156.146.41.0/24 -j DROP
sudo iptables -A INPUT -s 156.146.42.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.44.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.46.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.48.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.50.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.52.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.54.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.56.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.58.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.60.0/23 -j DROP
sudo iptables -A INPUT -s 156.146.62.0/24 -j DROP
sudo iptables -A INPUT -s 156.146.63.0/24 -j DROP
sudo iptables -A INPUT -s 159.242.228.0/24 -j DROP
sudo iptables -A INPUT -s 159.242.232.0/23 -j DROP
echo "100 subnet de DigitalOcean ont été ban!"
sleep 2

# BAN AS206898 
echo "Bannissement des IP DServer Hosting Pty Ltd | AS206898  "
sudo iptables -A INPUT -s 185.172.110.0/23 -j DROP
sudo iptables -A INPUT -s 185.83.215.0/24 -j DROP
echo "2 subnet de Server Hosting Pty Ltd ont été ban!"
sleep 2
echo "Fini // Par Amine B. et Alexis D."
